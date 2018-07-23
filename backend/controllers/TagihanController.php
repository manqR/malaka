<?php

namespace backend\controllers;

use Yii;
use backend\models\Tagihan;
use backend\models\TagihanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * TagihanController implements the CRUD actions for Tagihan model.
 */
class TagihanController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Tagihan models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TagihanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Tagihan model.
     * @param string $idtagihan
     * @param string $idjurusan
     * @param string $idkelas
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($idtagihan, $idjurusan, $idkelas)
    {
        return $this->render('view', [
            'model' => $this->findModel($idtagihan, $idjurusan, $idkelas),
        ]);
    }

    /**
     * Creates a new Tagihan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Tagihan();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idtagihan' => $model->idtagihan, 'idjurusan' => $model->idjurusan, 'idkelas' => $model->idkelas]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Tagihan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $idtagihan
     * @param string $idjurusan
     * @param string $idkelas
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($idtagihan, $idjurusan, $idkelas)
    {
        $model = $this->findModel($idtagihan, $idjurusan, $idkelas);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idtagihan' => $model->idtagihan, 'idjurusan' => $model->idjurusan, 'idkelas' => $model->idkelas]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Tagihan model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $idtagihan
     * @param string $idjurusan
     * @param string $idkelas
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($idtagihan, $idjurusan, $idkelas)
    {
        $this->findModel($idtagihan, $idjurusan, $idkelas)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Tagihan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $idtagihan
     * @param string $idjurusan
     * @param string $idkelas
     * @return Tagihan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($idtagihan, $idjurusan, $idkelas)
    {
        if (($model = Tagihan::findOne(['idtagihan' => $idtagihan, 'idjurusan' => $idjurusan, 'idkelas' => $idkelas])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
