.class public Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static instance:Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;

.field private enterDetectionTime:J

.field private entrySdkTime:J

.field private initAlgStartTime:J

.field private livebodyStartTime:J

.field private uploadStartTime:J

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 9
    new-instance v0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->instance:Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
  .registers 1
  .prologue
  .line 18
    sget-object v0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->instance:Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    return-object v0
.end method

.method public getEnterDetectionTime()J
  .registers 3
  .prologue
  .line 30
    iget-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->enterDetectionTime:J
    return-wide v0
.end method

.method public getEntrySdkTime()J
  .registers 3
  .prologue
  .line 22
    iget-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->entrySdkTime:J
    return-wide v0
.end method

.method public getInitAlgStartTime()J
  .registers 3
  .prologue
  .line 54
    iget-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->initAlgStartTime:J
    return-wide v0
.end method

.method public getLivebodyStartTime()J
  .registers 3
  .prologue
  .line 46
    iget-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->livebodyStartTime:J
    return-wide v0
.end method

.method public getUploadStartTime()J
  .registers 3
  .prologue
  .line 38
    iget-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->uploadStartTime:J
    return-wide v0
.end method

.method public setEnterDetectionTime(J)V
  .registers 4
  .prologue
  .line 34
    iput-wide p1, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->enterDetectionTime:J
  .line 35
    return-void
.end method

.method public setEntrySdkTime(J)V
  .registers 4
  .prologue
  .line 26
    iput-wide p1, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->entrySdkTime:J
  .line 27
    return-void
.end method

.method public setInitAlgStartTime(J)V
  .registers 4
  .prologue
  .line 58
    iput-wide p1, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->initAlgStartTime:J
  .line 59
    return-void
.end method

.method public setLivebodyStartTime(J)V
  .registers 4
  .prologue
  .line 50
    iput-wide p1, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->livebodyStartTime:J
  .line 51
    return-void
.end method

.method public setUploadStartTime(J)V
  .registers 4
  .prologue
  .line 42
    iput-wide p1, p0, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->uploadStartTime:J
  .line 43
    return-void
.end method
