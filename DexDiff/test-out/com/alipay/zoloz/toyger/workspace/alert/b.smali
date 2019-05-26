.class synthetic Lcom/alipay/zoloz/toyger/workspace/alert/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static synthetic a:[I

.method static constructor <clinit>()V
  .catch Ljava/lang/NoSuchFieldError; { :L0 .. :L1 } :L26
  .catch Ljava/lang/NoSuchFieldError; { :L1 .. :L2 } :L25
  .catch Ljava/lang/NoSuchFieldError; { :L2 .. :L3 } :L24
  .catch Ljava/lang/NoSuchFieldError; { :L3 .. :L4 } :L23
  .catch Ljava/lang/NoSuchFieldError; { :L4 .. :L5 } :L22
  .catch Ljava/lang/NoSuchFieldError; { :L5 .. :L6 } :L21
  .catch Ljava/lang/NoSuchFieldError; { :L6 .. :L7 } :L20
  .catch Ljava/lang/NoSuchFieldError; { :L7 .. :L8 } :L19
  .catch Ljava/lang/NoSuchFieldError; { :L8 .. :L9 } :L18
  .catch Ljava/lang/NoSuchFieldError; { :L9 .. :L10 } :L17
  .catch Ljava/lang/NoSuchFieldError; { :L10 .. :L11 } :L16
  .catch Ljava/lang/NoSuchFieldError; { :L11 .. :L12 } :L15
  .catch Ljava/lang/NoSuchFieldError; { :L12 .. :L13 } :L14
  .registers 3
  .prologue
  .line 62
    invoke-static { }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->values()[Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
  :L0
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/4 v2, 1
    aput v2, v0, v1
  :L1
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_BACK:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/4 v2, 2
    aput v2, v0, v1
  :L2
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INTERRUPT_RESUME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/4 v2, 3
    aput v2, v0, v1
  :L3
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_TIMEOUT:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L4
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/4 v2, 5
    aput v2, v0, v1
  :L5
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/4 v2, 6
    aput v2, v0, v1
  :L6
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/4 v2, 7
    aput v2, v0, v1
  :L7
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_ANDROID_VERSION_LOW:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/16 v2, 8
    aput v2, v0, v1
  :L8
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/16 v2, 9
    aput v2, v0, v1
  :L9
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL_RETRY:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/16 v2, 10
    aput v2, v0, v1
  :L10
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL_OVER_MAX_TIME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/16 v2, 11
    aput v2, v0, v1
  :L11
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/16 v2, 12
    aput v2, v0, v1
  :L12
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v1
    const/16 v2, 13
    aput v2, v0, v1
  :L13
    return-void
  :L14
    move-exception v0
    goto :L13
  :L15
    move-exception v0
    goto :L12
  :L16
    move-exception v0
    goto :L11
  :L17
    move-exception v0
    goto :L10
  :L18
    move-exception v0
    goto :L9
  :L19
    move-exception v0
    goto :L8
  :L20
    move-exception v0
    goto :L7
  :L21
    move-exception v0
    goto :L6
  :L22
    move-exception v0
    goto :L5
  :L23
    move-exception v0
    goto :L4
  :L24
    move-exception v0
    goto/16 :L3
  :L25
    move-exception v0
    goto/16 :L2
  :L26
    move-exception v0
    goto/16 :L1
.end method
