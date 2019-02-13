<?php

namespace backend\controllers;

use Yii;
use backend\models\Kuitansi;
use backend\models\KuitansiSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * KuitansiController implements the CRUD actions for Kuitansi model.
 */
class KuitansiController extends Controller
{
    /**
     * {@inheritdoc}
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
     * Lists all Kuitansi models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new KuitansiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Kuitansi model.
     * @param string $idkuitansi
     * @param integer $urutan
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($idkuitansi, $urutan)
    {
        return $this->render('view', [
            'model' => $this->findModel($idkuitansi, $urutan),
        ]);
    }

    /**
     * Creates a new Kuitansi model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Kuitansi();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idkuitansi' => $model->idkuitansi, 'urutan' => $model->urutan]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Kuitansi model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $idkuitansi
     * @param integer $urutan
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($idkuitansi, $urutan)
    {
        $model = $this->findModel($idkuitansi, $urutan);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idkuitansi' => $model->idkuitansi, 'urutan' => $model->urutan]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Kuitansi model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $idkuitansi
     * @param integer $urutan
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($idkuitansi, $urutan)
    {
        $this->findModel($idkuitansi, $urutan)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Kuitansi model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $idkuitansi
     * @param integer $urutan
     * @return Kuitansi the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($idkuitansi, $urutan)
    {
        if (($model = Kuitansi::findOne(['idkuitansi' => $idkuitansi, 'urutan' => $urutan])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
