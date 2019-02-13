<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kuitansi".
 *
 * @property string $idkuitansi
 * @property string $idsiswa
 * @property int $idcart
 * @property string $key_
 * @property double $nominal
 * @property int $idkelas
 * @property string $tahun_ajaran
 * @property string $tanggal_pembayaran
 * @property int $urutan
 */
class Kuitansi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kuitansi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idkuitansi', 'idsiswa', 'idcart', 'key_', 'nominal', 'idkelas', 'tahun_ajaran', 'tanggal_pembayaran'], 'required'],
            [['idcart', 'idkelas'], 'integer'],
            [['nominal'], 'number'],
            [['tanggal_pembayaran'], 'safe'],
            [['idkuitansi'], 'string', 'max' => 20],
            [['idsiswa'], 'string', 'max' => 10],
            [['key_', 'tahun_ajaran'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'idkuitansi' => 'Idkuitansi',
            'idsiswa' => 'Idsiswa',
            'idcart' => 'Idcart',
            'key_' => 'Key',
            'nominal' => 'Nominal',
            'idkelas' => 'Idkelas',
            'tahun_ajaran' => 'Tahun Ajaran',
            'tanggal_pembayaran' => 'Tanggal Pembayaran',
            'urutan' => 'Urutan',
        ];
    }
    public function getKelas(){
        return $this->hasOne(Kelas::className(), ['idkelas' => 'idkelas']);
    }
    public function getSiswa(){
        return $this->hasOne(Siswa::className(), ['idsiswa' => 'idsiswa']);
    }
}
