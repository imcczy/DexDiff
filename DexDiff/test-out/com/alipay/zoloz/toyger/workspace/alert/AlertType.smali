.class public final enum Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum",
    "<",
    "Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_ANDROID_VERSION_LOW:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_BACK:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_FACE_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_FACE_FAIL_OVER_MAX_TIME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_GO_PASSWORD_PAGE:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_INIT_CAMERA_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_INTERRUPT_RESUME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_INVALID:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_NO_SUITABLE_RATIO:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_REMOTE_COMMAND_FAIL_RETRY:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_TIMEOUT:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.field public final static enum ALERT_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;

.method static constructor <clinit>()V
  .registers 8
  .prologue
    const/4 v7, 4
    const/4 v6, 3
    const/4 v5, 2
    const/4 v4, 1
    const/4 v3, 0
  .line 8
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_INVALID"
    invoke-direct { v0, v1, v3 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INVALID:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 9
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_BACK"
    invoke-direct { v0, v1, v4 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_BACK:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 10
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_INTERRUPT_RESUME"
    invoke-direct { v0, v1, v5 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INTERRUPT_RESUME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 11
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_TIMEOUT"
    invoke-direct { v0, v1, v6 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_TIMEOUT:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 12
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_UNSUPPORTED_CPU"
    invoke-direct { v0, v1, v7 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 13
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_NO_PERMISSION_OF_CAMERA"
    const/4 v2, 5
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 14
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_REMOTE_COMMAND_FAIL"
    const/4 v2, 6
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 15
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_REMOTE_COMMAND_FAIL_RETRY"
    const/4 v2, 7
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL_RETRY:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 16
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_REMOTE_NETWORK_ERROR"
    const/16 v2, 8
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 17
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_FACE_FAIL"
    const/16 v2, 9
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 18
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_FACE_FAIL_OVER_MAX_TIME"
    const/16 v2, 10
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL_OVER_MAX_TIME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 19
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_NO_FRONT_CAMERA"
    const/16 v2, 11
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 20
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_NO_SUITABLE_RATIO"
    const/16 v2, 12
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_SUITABLE_RATIO:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 21
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_ANDROID_VERSION_LOW"
    const/16 v2, 13
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_ANDROID_VERSION_LOW:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 22
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_INIT_CAMERA_ERROR"
    const/16 v2, 14
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INIT_CAMERA_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 23
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_GO_PASSWORD_PAGE"
    const/16 v2, 15
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_GO_PASSWORD_PAGE:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 24
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    const-string v1, "ALERT_SYSTEM_ERROR"
    const/16 v2, 16
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .line 6
    const/16 v0, 17
    new-array v0, v0, [Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INVALID:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v1, v0, v3
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_BACK:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v1, v0, v4
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INTERRUPT_RESUME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v1, v0, v5
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_TIMEOUT:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v1, v0, v6
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v1, v0, v7
    const/4 v1, 5
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/4 v1, 6
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/4 v1, 7
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL_RETRY:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 8
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 9
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 10
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL_OVER_MAX_TIME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 11
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 12
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_SUITABLE_RATIO:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 13
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_ANDROID_VERSION_LOW:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 14
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INIT_CAMERA_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 15
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_GO_PASSWORD_PAGE:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    const/16 v1, 16
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    aput-object v2, v0, v1
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->$VALUES:[Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 6
    invoke-direct { p0, p1, p2 }, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .registers 2
  .prologue
  .line 6
    const-class v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    return-object v0
.end method

.method public static values()[Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  .registers 1
  .prologue
  .line 6
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->$VALUES:[Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0 }, [Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    return-object v0
.end method
