<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "cart".
 *
 * @property int $idcart
 * @property string $idsiswa
 * @property string $key_
 * @property string $ajaran
 * @property string $keterangan
 * @property double $nominal
 * @property int $flag
 * @property string $user_create
 * @property string $date_create
 */
class Cart extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cart';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idsiswa', 'key_', 'ajaran', 'keterangan', 'nominal', 'flag', 'user_create', 'date_create'], 'required'],
            [['nominal'], 'number'],
            [['flag'], 'integer'],
            [['date_create'], 'safe'],
            [['idsiswa', 'ajaran'], 'string', 'max' => 10],
            [['key_', 'keterangan', 'user_create'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idcart' => 'Idcart',
            'idsiswa' => 'Idsiswa',
            'key_' => 'Key',
            'ajaran' => 'Ajaran',
            'keterangan' => 'Keterangan',
            'nominal' => 'Nominal',
            'flag' => 'Flag',
            'user_create' => 'User Create',
            'date_create' => 'Date Create',
        ];
    }
}
