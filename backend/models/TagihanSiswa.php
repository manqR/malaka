<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tagihan_siswa".
 *
 * @property int $idtagihan_siswa
 * @property string $idtagihan
 * @property string $idsiswa
 * @property string $tahun_ajaran
 * @property string $nama_tagihan
 * @property double $besaran
 * @property string $keterangan
 * @property string $user_create
 * @property string $date_create
 */
class TagihanSiswa extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tagihan_siswa';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idtagihan', 'idsiswa', 'tahun_ajaran', 'nama_tagihan', 'besaran', 'user_create', 'date_create'], 'required'],
            [['besaran'], 'number'],
            [['keterangan'], 'string'],
            [['date_create'], 'safe'],
            [['idtagihan', 'idsiswa'], 'string', 'max' => 10],
            [['tahun_ajaran'], 'string', 'max' => 20],
            [['nama_tagihan', 'user_create'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idtagihan_siswa' => 'Idtagihan Siswa',
            'idsiswa' => 'Idsiswa',
            'tahun_ajaran' => 'Tahun Ajaran',
            'nama_tagihan' => 'Nama Tagihan',
            'besaran' => 'Besaran',
            'keterangan' => 'Keterangan',
            'user_create' => 'User Create',
            'date_create' => 'Date Create',
        ];
    }
}
