<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kelas_group".
 *
 * @property int $idgroup
 * @property string $idkelas
 * @property string $idjurusan
 * @property string $wali_kelas
 * @property string $tahun_ajaran
 * @property string $status
 */
class KelasGroup extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kelas_group';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idkelas', 'idjurusan', 'wali_kelas', 'tahun_ajaran', 'status'], 'required'],
            [['status'], 'string'],
            [['idkelas', 'idjurusan'], 'string', 'max' => 10],
            [['wali_kelas', 'tahun_ajaran'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idgroup' => 'Idgroup',
            'idkelas' => 'Idkelas',
            'idjurusan' => 'Idjurusan',
            'wali_kelas' => 'Wali Kelas',
            'tahun_ajaran' => 'Tahun Ajaran',
            'status' => 'Status',
        ];
    }
	
	
}
