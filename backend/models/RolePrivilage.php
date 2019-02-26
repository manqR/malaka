<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "role_privilage".
 *
 * @property int $idprivilage
 * @property int $idrole
 * @property string $keterangan
 * @property string $nama_menu
 * @property int $flag
 */
class RolePrivilage extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'role_privilage';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idrole', 'flag'], 'integer'],
            [['keterangan', 'nama_menu'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'idprivilage' => 'Idprivilage',
            'idrole' => 'Idrole',
            'keterangan' => 'Keterangan',
            'nama_menu' => 'Nama Menu',
            'flag' => 'Flag',
        ];
    }
}
