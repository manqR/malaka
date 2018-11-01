<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "cart".
 *
 * @property int $idcart
 * @property string $idsiswa
 * @property string $keterangan
 * @property double $nominal
 * @property string $catatan
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
            [['idsiswa', 'keterangan', 'nominal', 'catatan', 'user_create', 'date_create'], 'required'],
            [['nominal'], 'number'],
            [['date_create'], 'safe'],
            [['idsiswa'], 'string', 'max' => 10],
            [['keterangan', 'catatan', 'user_create'], 'string', 'max' => 50],
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
            'keterangan' => 'Keterangan',
            'nominal' => 'Nominal',
            'catatan' => 'Catatan',
            'user_create' => 'User Create',
            'date_create' => 'Date Create',
        ];
    }
}
