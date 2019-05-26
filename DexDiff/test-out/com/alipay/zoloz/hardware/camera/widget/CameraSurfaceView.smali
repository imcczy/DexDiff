.class public Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
.super Landroid/view/SurfaceView;
.implements Landroid/view/SurfaceHolder$Callback;
.source "SourceFile"

.field static mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;

.field private a:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;

.field mContext:Landroid/content/Context;

.field mPreviewRate:F

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 33
    const/4 v0, 0
    sput-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 5
  .prologue
  .line 39
    invoke-direct { p0, p1, p2 }, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 41
    invoke-virtual { p1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mContext:Landroid/content/Context;
  .line 42
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mContext:Landroid/content/Context;
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->getScreenRate(Landroid/content/Context;)F
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mPreviewRate:F
  .line 44
    invoke-virtual { p0 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
  .line 45
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    const/4 v1, -2
    invoke-interface { v0, v1 }, Landroid/view/SurfaceHolder;->setFormat(I)V
  .line 46
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    const/4 v1, 3
    invoke-interface { v0, v1 }, Landroid/view/SurfaceHolder;->setType(I)V
  .line 47
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-interface { v0, p0 }, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
  .line 48
    return-void
.end method

.method public static getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/c;
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L5
  .registers 6
  .prologue
  .line 122
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-nez v0, :L1
  .line 123
    const-string v0, "com.alipay.zoloz.hardware.camera.impl.AndroidImpl"
  :L0
  .line 125
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
  .line 126
    const-string v1, "getInstance"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
    const-class v4, Landroid/content/Context;
    aput-object v4, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 127
    const/4 v1, 0
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    aput-object p0, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/hardware/camera/c;
    sput-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
  :L1
  .line 139
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    return-object v0
  :L2
  .line 128
    move-exception v0
  .line 129
    invoke-virtual { v0 }, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    goto :L1
  :L3
  .line 130
    move-exception v0
  .line 131
    invoke-virtual { v0 }, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    goto :L1
  :L4
  .line 132
    move-exception v0
  .line 133
    invoke-virtual { v0 }, Ljava/lang/IllegalAccessException;->printStackTrace()V
    goto :L1
  :L5
  .line 134
    move-exception v0
  .line 135
    invoke-virtual { v0 }, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    goto :L1
.end method

.method public static getCameraName()Ljava/lang/String;
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .registers 3
  .prologue
  .line 143
    const-string v1, "Android"
  :L0
  .line 145
    const-class v0, Lcom/alipay/android/phone/a/a/a;
    const-string v2, "a"
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
  .line 146
    const/4 v2, 1
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 147
    const-class v2, Lcom/alipay/android/phone/a/a/a;
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L1
  .line 153
    return-object v0
  :L2
  .line 148
    move-exception v0
  .line 149
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    move-object v0, v1
  .line 152
    goto :L1
  :L3
  .line 150
    move-exception v0
  .line 151
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    move-object v0, v1
    goto :L1
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
  .registers 2
  .prologue
  .line 157
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    return-object v0
.end method

.method public init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  .registers 4
  .prologue
  .line 51
    invoke-static { p1 }, Lcom/alipay/zoloz/hardware/camera/a/b;->a([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->a:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .line 52
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mContext:Landroid/content/Context;
    invoke-static { v0 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/c;
  .line 53
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-eqz v0, :L0
  .line 54
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->a:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/hardware/camera/c;->initCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  :L0
  .line 56
    return-void
.end method

.method public setCameraCallback(Lcom/alipay/zoloz/hardware/camera/b;)V
  .registers 2
  .prologue
  .line 161
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
  .line 162
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
  .registers 11
  .prologue
  .line 84
    const-string v0, "surfaceChanged..."
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 86
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-eqz v0, :L2
  .line 87
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    iget v2, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mPreviewRate:F
    invoke-interface { v0, v1, v2, p3, p4 }, Lcom/alipay/zoloz/hardware/camera/c;->startPreview(Landroid/view/SurfaceHolder;FII)V
  .line 89
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v0, :L2
  .line 90
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->getCameraViewRotation()I
    move-result v0
  .line 94
    const/16 v1, 90
    if-eq v0, v1, :L0
    const/16 v1, 270
    if-ne v0, v1, :L3
  :L0
  .line 95
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->getPreviewHeight()I
    move-result p3
  .line 96
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->getPreviewWidth()I
    move-result p4
  :L1
  .line 101
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    int-to-double v2, p3
    int-to-double v4, p4
    invoke-interface { v0, v2, v3, v4, v5 }, Lcom/alipay/zoloz/hardware/camera/b;->onSurfaceChanged(DD)V
  :L2
  .line 104
    return-void
  :L3
  .line 97
    if-eqz v0, :L4
    const/16 v1, 180
    if-ne v0, v1, :L1
  :L4
  .line 98
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->getPreviewWidth()I
    move-result p3
  .line 99
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->getPreviewHeight()I
    move-result p4
    goto :L1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 4
  .prologue
  .line 60
    const-string v0, "surfaceCreated..."
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 62
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-eqz v0, :L0
  .line 63
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/hardware/camera/c;->setCallback(Lcom/alipay/zoloz/hardware/camera/b;)V
  :L0
  .line 67
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-eqz v0, :L1
  .line 68
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->startCamera()V
  :L1
  .line 77
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v0, :L2
  .line 78
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/b;->onSurfaceCreated()V
  :L2
  .line 80
    return-void
  :L3
  .line 70
    move-exception v0
  .line 71
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v0, :L2
  .line 72
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    const/4 v1, -1
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/hardware/camera/b;->onError(I)V
    goto :L2
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
  .registers 4
  .prologue
  .line 109
    const-string v0, "surfaceDestroyed..."
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 111
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-eqz v0, :L0
  .line 112
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->stopCamera()V
  .line 113
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    const/4 v1, 0
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/hardware/camera/c;->setCallback(Lcom/alipay/zoloz/hardware/camera/b;)V
  :L0
  .line 116
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v0, :L1
  .line 117
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/b;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/b;->onSurfaceDestroyed()V
  :L1
  .line 119
    return-void
.end method
