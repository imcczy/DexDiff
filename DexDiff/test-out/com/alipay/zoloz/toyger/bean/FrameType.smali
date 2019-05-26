.class public final enum Lcom/alipay/zoloz/toyger/bean/FrameType;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum",
    "<",
    "Lcom/alipay/zoloz/toyger/bean/FrameType;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public final static enum CAMERA:Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public final static enum COMPLETED:Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public final static enum DARK:Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public final static enum ERROR:Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public final static enum FRAME:Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public final static enum INIT:Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public final static enum STATE:Lcom/alipay/zoloz/toyger/bean/FrameType;

.method static constructor <clinit>()V
  .registers 8
  .prologue
    const/4 v7, 4
    const/4 v6, 3
    const/4 v5, 2
    const/4 v4, 1
    const/4 v3, 0
  .line 15
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    const-string v1, "ERROR"
    invoke-direct { v0, v1, v3 }, Lcom/alipay/zoloz/toyger/bean/FrameType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->ERROR:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 20
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    const-string v1, "FRAME"
    invoke-direct { v0, v1, v4 }, Lcom/alipay/zoloz/toyger/bean/FrameType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->FRAME:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 25
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    const-string v1, "COMPLETED"
    invoke-direct { v0, v1, v5 }, Lcom/alipay/zoloz/toyger/bean/FrameType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->COMPLETED:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 30
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    const-string v1, "STATE"
    invoke-direct { v0, v1, v6 }, Lcom/alipay/zoloz/toyger/bean/FrameType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->STATE:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 35
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    const-string v1, "DARK"
    invoke-direct { v0, v1, v7 }, Lcom/alipay/zoloz/toyger/bean/FrameType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->DARK:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 40
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    const-string v1, "CAMERA"
    const/4 v2, 5
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/bean/FrameType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->CAMERA:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 45
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    const-string v1, "INIT"
    const/4 v2, 6
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/bean/FrameType;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->INIT:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 11
    const/4 v0, 7
    new-array v0, v0, [Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->ERROR:Lcom/alipay/zoloz/toyger/bean/FrameType;
    aput-object v1, v0, v3
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->FRAME:Lcom/alipay/zoloz/toyger/bean/FrameType;
    aput-object v1, v0, v4
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->COMPLETED:Lcom/alipay/zoloz/toyger/bean/FrameType;
    aput-object v1, v0, v5
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->STATE:Lcom/alipay/zoloz/toyger/bean/FrameType;
    aput-object v1, v0, v6
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->DARK:Lcom/alipay/zoloz/toyger/bean/FrameType;
    aput-object v1, v0, v7
    const/4 v1, 5
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->CAMERA:Lcom/alipay/zoloz/toyger/bean/FrameType;
    aput-object v2, v0, v1
    const/4 v1, 6
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->INIT:Lcom/alipay/zoloz/toyger/bean/FrameType;
    aput-object v2, v0, v1
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->$VALUES:[Lcom/alipay/zoloz/toyger/bean/FrameType;
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
  .line 11
    invoke-direct { p0, p1, p2 }, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/bean/FrameType;
  .registers 2
  .prologue
  .line 11
    const-class v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/bean/FrameType;
    return-object v0
.end method

.method public static values()[Lcom/alipay/zoloz/toyger/bean/FrameType;
  .registers 1
  .prologue
  .line 11
    sget-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->$VALUES:[Lcom/alipay/zoloz/toyger/bean/FrameType;
    invoke-virtual { v0 }, [Lcom/alipay/zoloz/toyger/bean/FrameType;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lcom/alipay/zoloz/toyger/bean/FrameType;
    return-object v0
.end method
