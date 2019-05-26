.class Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "TimeOfDay"
.end annotation

.field hour:I

.field minute:I

.field second:I

.method constructor <init>(III)V
  .registers 4
  .prologue
  .line 74
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 75
    iput p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;->hour:I
  .line 76
    iput p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;->minute:I
  .line 77
    iput p3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;->second:I
  .line 78
    return-void
.end method
