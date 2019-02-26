<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Kuitansi;

/**
 * KuitansiSearch represents the model behind the search form of `backend\models\Kuitansi`.
 */
class KuitansiSearch extends Kuitansi
{
    /**
     * {@inheritdoc}
     */
    public $nama_siswa;
    public $nama_kelas;
    public function rules()
    {
        return [
            [['idkuitansi', 'idsiswa','nama_siswa', 'nama_kelas', 'key_', 'tahun_ajaran', 'tanggal_pembayaran'], 'safe'],
            [['idcart', 'idkelas', 'urutan'], 'integer'],
            [['nominal'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Kuitansi::find();
        $query->joinWith(['kelas0']);
        $query->joinWith(['siswa0']);
        $query->groupBy(['idkuitansi','tahun_ajaran','nominal']);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $dataProvider->sort->attributes['nama_kelas']=[ 
			'asc'=>['kelas.nama_kelas' => SORT_ASC],
			'desc'=>['kelas.nama_kelas'=> SORT_DESC],
		];
        $dataProvider->sort->attributes['nama_siswa']=[ 
			'asc'=>['siswa.nama_lengkap' => SORT_ASC],
			'desc'=>['siswa.nama_lengkap'=> SORT_DESC],
		];

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'idcart' => $this->idcart,
            'nominal' => $this->nominal,
            'idkelas' => $this->idkelas,
            'tanggal_pembayaran' => $this->tanggal_pembayaran,
            'urutan' => $this->urutan,
        ]);

        $query->andFilterWhere(['like', 'idkuitansi', $this->idkuitansi])
            ->andFilterWhere(['like', 'idsiswa', $this->idsiswa])
            ->andFilterWhere(['like', 'key_', $this->key_])
            ->andFilterWhere(['like', 'kelas.nama_kelas', $this->nama_kelas])
            ->andFilterWhere(['like', 'siswa.nama_lengkap', $this->nama_siswa])
            ->andFilterWhere(['like', 'tahun_ajaran', $this->tahun_ajaran]);

        return $dataProvider;
    }
}
