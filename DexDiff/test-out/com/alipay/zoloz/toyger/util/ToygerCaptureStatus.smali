.class public final enum Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum",
    "<",
    "Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;

.field public final static enum CAPTURE:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;

.field public final static enum DARK_TRIGGERED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;

.field public final static enum FRAME_RETURNED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;

.field public final static enum INIT:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;

.field public final static enum PAUSED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;

.method static constructor <clinit>()V
  .registers 7
  .prologue
    const/4 v6, 4
    const/4 v5, 3
    const/4 v4, 2
    const/4 v3, 1
    const/4 v2, 0
  .line 7
    new-instance v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    const-string v1, "INIT"
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->INIT:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    new-instance v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    const-string v1, "CAPTURE"
    invoke-direct { v0, v1, v3 }, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->CAPTURE:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    new-instance v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    const-string v1, "PAUSED"
    invoke-direct { v0, v1, v4 }, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->PAUSED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    new-instance v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    const-string v1, "DARK_TRIGGERED"
    invoke-direct { v0, v1, v5 }, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->DARK_TRIGGERED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    new-instance v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    const-string v1, "FRAME_RETURNED"
    invoke-direct { v0, v1, v6 }, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->FRAME_RETURNED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
  .line 6
    const/4 v0, 5
    new-array v0, v0, [Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    sget-object v1, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->INIT:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    aput-object v1, v0, v2
    sget-object v1, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->CAPTURE:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    aput-object v1, v0, v3
    sget-object v1, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->PAUSED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    aput-object v1, v0, v4
    sget-object v1, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->DARK_TRIGGERED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    aput-object v1, v0, v5
    sget-object v1, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->FRAME_RETURNED:Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    aput-object v1, v0, v6
    sput-object v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->$VALUES:[Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
  .registers 2
  .prologue
  .line 6
    const-class v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    return-object v0
.end method

.method public static values()[Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
  .registers 1
  .prologue
  .line 6
    sget-object v0, Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->$VALUES:[Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    invoke-virtual { v0 }, [Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lcom/alipay/zoloz/toyger/util/ToygerCaptureStatus;
    return-object v0
.end method
