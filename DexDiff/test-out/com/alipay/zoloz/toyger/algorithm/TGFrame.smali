.class public Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static MODE_BGR:I = 2

.field public final static MODE_BGRA:I = 1

.field public final static MODE_NV21:I = 0

.field public final static MODE_RGB:I = 4

.field public final static MODE_RGBA:I = 3

.field public final static TYPE_DARK:I = 1

.field public final static TYPE_DEPTH:I = 2

.field public final static TYPE_LIGHT:I

.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public data:[B

.field public frameMode:I

.field public frameType:I

.field public height:I

.field public rotation:I

.field public width:I

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 92
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 93
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
  .registers 3
  .prologue
  .line 123
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 124
    if-eqz p1, :L1
  .line 125
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    if-eqz v0, :L0
  .line 126
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    invoke-virtual { v0 }, [B->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [B
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
  :L0
  .line 128
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
  .line 129
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
  .line 130
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
  .line 131
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
  .line 132
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I
  .line 133
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;
  :L1
  .line 135
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IIIII)V
  .registers 7
  .prologue
  .line 114
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 115
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;
  .line 116
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
  .line 117
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
  .line 118
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
  .line 119
    iput p5, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
  .line 120
    iput p6, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I
  .line 121
    return-void
.end method

.method public constructor <init>([BIIIII)V
  .registers 7
  .prologue
  .line 105
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 106
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
  .line 107
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
  .line 108
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
  .line 109
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
  .line 110
    iput p5, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
  .line 111
    iput p6, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I
  .line 112
    return-void
.end method

.method public deepCopy()Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .registers 8
  .prologue
  .line 138
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    const/4 v1, 0
    check-cast v1, [B
    iget v2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    iget v4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    iget v5, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
    iget v6, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I
    invoke-direct/range { v0 .. v6 }, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;-><init>([BIIIII)V
  .line 140
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    if-eqz v1, :L1
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    array-length v1, v1
    if-eqz v1, :L1
  .line 141
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    array-length v2, v2
    invoke-static { v1, v2 }, Ljava/util/Arrays;->copyOf([BI)[B
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
  :L0
  .line 148
    return-object v0
  :L1
  .line 144
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;
    if-eqz v1, :L0
  .line 145
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual { v1 }, Ljava/nio/ByteBuffer;->remaining()I
    move-result v1
    new-array v1, v1, [B
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
  .line 146
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;
    iget-object v2, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    goto :L0
.end method

.method public recycle()V
  .registers 2
  .prologue
    const/4 v0, 0
  .line 152
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
  .line 153
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;
  .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 158
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "TGFrame{data=***, width="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", height="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", rotation="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", frameMode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", frameType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
