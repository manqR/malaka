<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "kelas".
 *
 * @property string $idkelas
 * @property string $nama_kelas
 * @property int $status
 */
class Kelas extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kelas';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idkelas'], 'required'],
            [['status'], 'integer'],
            [['idkelas'], 'string', 'max' => 10],
            [['nama_kelas'], 'string', 'max' => 50],
            [['idkelas'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idkelas' => 'Idkelas',
            'nama_kelas' => 'Nama Kelas',
            'status' => 'Status',
        ];
    }
}
