.class public final enum Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum",
    "<",
    "Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum FACE_CAPTURED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum FACE_CAPTURING_DARK:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum FACE_COMPLETED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum FAILED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum INIT:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum PAUSE:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum UPLOADED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field public final static enum UPLOADING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.method static constructor <clinit>()V
  .registers 8
  .prologue
    const/4 v7, 4
    const/4 v6, 3
    const/4 v5, 2
    const/4 v4, 1
    const/4 v3, 0
  .line 13
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "INIT"
    invoke-direct { v0, v1, v3 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->INIT:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 18
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "FACE_CAPTURING"
    invoke-direct { v0, v1, v4 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 23
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "PAUSE"
    invoke-direct { v0, v1, v5 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->PAUSE:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 28
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "FACE_CAPTURING_DARK"
    invoke-direct { v0, v1, v6 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING_DARK:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 33
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "FACE_CAPTURED"
    invoke-direct { v0, v1, v7 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 38
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "FACE_COMPLETED"
    const/4 v2, 5
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_COMPLETED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 43
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "UPLOADING"
    const/4 v2, 6
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->UPLOADING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 48
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "UPLOADED"
    const/4 v2, 7
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->UPLOADED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 53
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    const-string v1, "FAILED"
    const/16 v2, 8
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FAILED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 9
    const/16 v0, 9
    new-array v0, v0, [Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->INIT:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v1, v0, v3
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v1, v0, v4
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->PAUSE:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v1, v0, v5
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING_DARK:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v1, v0, v6
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v1, v0, v7
    const/4 v1, 5
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_COMPLETED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v2, v0, v1
    const/4 v1, 6
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->UPLOADING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v2, v0, v1
    const/4 v1, 7
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->UPLOADED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v2, v0, v1
    const/16 v1, 8
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FAILED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    aput-object v2, v0, v1
    sput-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->$VALUES:[Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
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
  .line 9
    invoke-direct { p0, p1, p2 }, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .registers 2
  .prologue
  .line 9
    const-class v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    return-object v0
.end method

.method public static values()[Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .registers 1
  .prologue
  .line 9
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->$VALUES:[Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    invoke-virtual { v0 }, [Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    return-object v0
.end method
