.class synthetic Lcom/alipay/zoloz/toyger/workspace/alert/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static synthetic a:[I

.method static constructor <clinit>()V
  .catch Ljava/lang/NoSuchFieldError; { :L0 .. :L1 } :L46
  .catch Ljava/lang/NoSuchFieldError; { :L1 .. :L2 } :L45
  .catch Ljava/lang/NoSuchFieldError; { :L2 .. :L3 } :L44
  .catch Ljava/lang/NoSuchFieldError; { :L3 .. :L4 } :L43
  .catch Ljava/lang/NoSuchFieldError; { :L4 .. :L5 } :L42
  .catch Ljava/lang/NoSuchFieldError; { :L5 .. :L6 } :L41
  .catch Ljava/lang/NoSuchFieldError; { :L6 .. :L7 } :L40
  .catch Ljava/lang/NoSuchFieldError; { :L7 .. :L8 } :L39
  .catch Ljava/lang/NoSuchFieldError; { :L8 .. :L9 } :L38
  .catch Ljava/lang/NoSuchFieldError; { :L9 .. :L10 } :L37
  .catch Ljava/lang/NoSuchFieldError; { :L10 .. :L11 } :L36
  .catch Ljava/lang/NoSuchFieldError; { :L11 .. :L12 } :L35
  .catch Ljava/lang/NoSuchFieldError; { :L12 .. :L13 } :L34
  .catch Ljava/lang/NoSuchFieldError; { :L13 .. :L14 } :L33
  .catch Ljava/lang/NoSuchFieldError; { :L14 .. :L15 } :L32
  .catch Ljava/lang/NoSuchFieldError; { :L15 .. :L16 } :L31
  .catch Ljava/lang/NoSuchFieldError; { :L16 .. :L17 } :L30
  .catch Ljava/lang/NoSuchFieldError; { :L17 .. :L18 } :L29
  .catch Ljava/lang/NoSuchFieldError; { :L18 .. :L19 } :L28
  .catch Ljava/lang/NoSuchFieldError; { :L19 .. :L20 } :L27
  .catch Ljava/lang/NoSuchFieldError; { :L20 .. :L21 } :L26
  .catch Ljava/lang/NoSuchFieldError; { :L21 .. :L22 } :L25
  .catch Ljava/lang/NoSuchFieldError; { :L22 .. :L23 } :L24
  .registers 3
  .prologue
  .line 133
    invoke-static { }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->values()[Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
  :L0
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/4 v2, 1
    aput v2, v0, v1
  :L1
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_EXIT_FACE:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/4 v2, 2
    aput v2, v0, v1
  :L2
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/4 v2, 3
    aput v2, v0, v1
  :L3
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_INTERRUPT_RESUME:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L4
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/4 v2, 5
    aput v2, v0, v1
  :L5
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/4 v2, 6
    aput v2, v0, v1
  :L6
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_NETWORK_ERROR_LOGIN:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/4 v2, 7
    aput v2, v0, v1
  :L7
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_NETWORK_ERROR_LOGIN_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 8
    aput v2, v0, v1
  :L8
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_NETWORK_ERROR_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 9
    aput v2, v0, v1
  :L9
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 10
    aput v2, v0, v1
  :L10
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_COMMAND_FAIL_LOGIN_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 11
    aput v2, v0, v1
  :L11
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_COMMAND_FAIL_LOGIN:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 12
    aput v2, v0, v1
  :L12
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_COMMAND_FAIL_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 13
    aput v2, v0, v1
  :L13
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 14
    aput v2, v0, v1
  :L14
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_FACE_FAIL_LOGIN:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 15
    aput v2, v0, v1
  :L15
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_FACE_FAIL_LOGIN_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 16
    aput v2, v0, v1
  :L16
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_FACE_FAIL:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 17
    aput v2, v0, v1
  :L17
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_FACE_FAIL_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 18
    aput v2, v0, v1
  :L18
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_TIMEOUT_LOGIN:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 19
    aput v2, v0, v1
  :L19
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_TIMEOUT_LOGIN_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 20
    aput v2, v0, v1
  :L20
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_TIMEOUT:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 21
    aput v2, v0, v1
  :L21
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_TIMEOUT_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 22
    aput v2, v0, v1
  :L22
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_ANDROID_VERSION_LOW:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    const/16 v2, 23
    aput v2, v0, v1
  :L23
    return-void
  :L24
    move-exception v0
    goto :L23
  :L25
    move-exception v0
    goto :L22
  :L26
    move-exception v0
    goto :L21
  :L27
    move-exception v0
    goto :L20
  :L28
    move-exception v0
    goto :L19
  :L29
    move-exception v0
    goto :L18
  :L30
    move-exception v0
    goto :L17
  :L31
    move-exception v0
    goto :L16
  :L32
    move-exception v0
    goto :L15
  :L33
    move-exception v0
    goto :L14
  :L34
    move-exception v0
    goto/16 :L13
  :L35
    move-exception v0
    goto/16 :L12
  :L36
    move-exception v0
    goto/16 :L11
  :L37
    move-exception v0
    goto/16 :L10
  :L38
    move-exception v0
    goto/16 :L9
  :L39
    move-exception v0
    goto/16 :L8
  :L40
    move-exception v0
    goto/16 :L7
  :L41
    move-exception v0
    goto/16 :L6
  :L42
    move-exception v0
    goto/16 :L5
  :L43
    move-exception v0
    goto/16 :L4
  :L44
    move-exception v0
    goto/16 :L3
  :L45
    move-exception v0
    goto/16 :L2
  :L46
    move-exception v0
    goto/16 :L1
.end method
