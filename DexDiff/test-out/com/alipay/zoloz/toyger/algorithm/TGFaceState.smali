.class public Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static TG_MESSAGE_BAD_BRIGHTNESS:I = 8

.field public final static TG_MESSAGE_BAD_EYE_OPENNESS:I = 10

.field public final static TG_MESSAGE_BAD_PITCH:I = 5

.field public final static TG_MESSAGE_BAD_QUALITY:I = 9

.field public final static TG_MESSAGE_BAD_YAW:I = 6

.field public final static TG_MESSAGE_BLINK_OPENNESS:I = 11

.field public final static TG_MESSAGE_DISTANCE_TOO_CLOSE:I = 3

.field public final static TG_MESSAGE_DISTANCE_TOO_FAR:I = 2

.field public final static TG_MESSAGE_FACE_NOT_IN_CENTER:I = 4

.field public final static TG_MESSAGE_IMAGE_PERFECT:I = 0

.field public final static TG_MESSAGE_IS_MOVING:I = 7

.field public final static TG_MESSAGE_NO_FACE:I = 1

.field public final static TG_MESSAGE_STACK_TIME:I = 12

.field public brightness:I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public distance:I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public faceInCenter:Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public goodPitch:I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public goodQuality:Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public goodYaw:I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public hasFace:Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public isMoving:Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public messageCode:I

.field public progress:F

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 104
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 105
    return-void
.end method

.method public constructor <init>(FI)V
  .registers 3
  .prologue
  .line 113
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 114
    iput p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->progress:F
  .line 115
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->messageCode:I
  .line 116
    return-void
.end method

.method public constructor <init>(ZIIZIIZZF)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 10
  .prologue
  .line 133
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 134
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->hasFace:Z
  .line 135
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->brightness:I
  .line 136
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->distance:I
  .line 137
    iput-boolean p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->faceInCenter:Z
  .line 138
    iput p5, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodPitch:I
  .line 139
    iput p6, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodYaw:I
  .line 140
    iput-boolean p7, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->isMoving:Z
  .line 141
    iput-boolean p8, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodQuality:Z
  .line 142
    iput p9, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->progress:F
  .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 147
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "TGFaceState{progress="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->progress:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", messageCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->messageCode:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
