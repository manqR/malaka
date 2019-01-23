<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tagihan_biaya_tidaktetap".
 *
 * @property int $id
 * @property int $idbiaya
 * @property string $no_tagihan
 * @property string $idsiswa
 * @property string $keterangan
 * @property double $nominal
 * @property string $tahun_ajaran
 * @property int $flag
 * @property string $tgl_assign
 * @property string $tgl_payment
 * @property string $user
 */
class TagihanBiayaTidaktetap extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tagihan_biaya_tidaktetap';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idbiaya', 'flag'], 'integer'],
            [['no_tagihan', 'idsiswa', 'keterangan', 'nominal', 'tahun_ajaran', 'flag', 'tgl_assign', 'user'], 'required'],
            [['nominal'], 'number'],
            [['tgl_assign', 'tgl_payment'], 'safe'],
            [['no_tagihan', 'keterangan', 'tahun_ajaran', 'user'], 'string', 'max' => 50],
            [['idsiswa'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idbiaya' => 'Idbiaya',
            'no_tagihan' => 'No Tagihan',
            'idsiswa' => 'Idsiswa',
            'keterangan' => 'Keterangan',
            'nominal' => 'Nominal',
            'tahun_ajaran' => 'Tahun Ajaran',
            'flag' => 'Flag',
            'tgl_assign' => 'Tgl Assign',
            'tgl_payment' => 'Tgl Payment',
            'user' => 'User',
        ];
    }
}
