.class public final enum Lcom/alipay/zoloz/toyger/util/EnvErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum",
    "<",
    "Lcom/alipay/zoloz/toyger/util/EnvErrorType;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lcom/alipay/zoloz/toyger/util/EnvErrorType;

.field public final static enum ENV_ERROR_INVALID:Lcom/alipay/zoloz/toyger/util/EnvErrorType;

.field public final static enum ENV_ERROR_LOW_OS:Lcom/alipay/zoloz/toyger/util/EnvErrorType;

.field public final static enum ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;

.field public final static enum ENV_ERROR_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;

.field public final static enum ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/util/EnvErrorType;

.method static constructor <clinit>()V
  .registers 7
  .prologue
    const/4 v6, 4
    const/4 v5, 3
    const/4 v4, 2
    const/4 v3, 1
    const/4 v2, 0
  .line 7
    new-instance v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    const-string v1, "ENV_ERROR_INVALID"
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/util/EnvErrorType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .line 8
    new-instance v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    const-string v1, "ENV_ERROR_LOW_OS"
    invoke-direct { v0, v1, v3 }, Lcom/alipay/zoloz/toyger/util/EnvErrorType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .line 9
    new-instance v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    const-string v1, "ENV_ERROR_UNSUPPORTED_CPU"
    invoke-direct { v0, v1, v4 }, Lcom/alipay/zoloz/toyger/util/EnvErrorType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .line 10
    new-instance v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    const-string v1, "ENV_ERROR_NO_PERMISSION_OF_CAMERA"
    invoke-direct { v0, v1, v5 }, Lcom/alipay/zoloz/toyger/util/EnvErrorType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .line 11
    new-instance v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    const-string v1, "ENV_ERROR_NO_FRONT_CAMERA"
    invoke-direct { v0, v1, v6 }, Lcom/alipay/zoloz/toyger/util/EnvErrorType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .line 6
    const/4 v0, 5
    new-array v0, v0, [Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    aput-object v1, v0, v2
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    aput-object v1, v0, v3
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    aput-object v1, v0, v4
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    aput-object v1, v0, v5
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    aput-object v1, v0, v6
    sput-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->$VALUES:[Lcom/alipay/zoloz/toyger/util/EnvErrorType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .registers 2
  .prologue
  .line 6
    const-class v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    return-object v0
.end method

.method public static values()[Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .registers 1
  .prologue
  .line 6
    sget-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->$VALUES:[Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    invoke-virtual { v0 }, [Lcom/alipay/zoloz/toyger/util/EnvErrorType;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    return-object v0
.end method
