<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "jurusan".
 *
 * @property string $idjurusan
 * @property int $idajaran
 * @property string $nama_jurusan
 * @property int $status
 */
class Jurusan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'jurusan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idjurusan', 'idajaran'], 'required'],
            [['idajaran', 'status'], 'integer'],
            [['idjurusan'], 'string', 'max' => 10],
            [['nama_jurusan'], 'string', 'max' => 50],
            [['idjurusan'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idjurusan' => 'Idjurusan',
            'idajaran' => 'Idajaran',
            'nama_jurusan' => 'Nama Jurusan',
            'status' => 'Status',
        ];
    }
}
