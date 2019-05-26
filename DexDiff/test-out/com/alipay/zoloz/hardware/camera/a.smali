.class public Lcom/alipay/zoloz/hardware/camera/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field a:Ljava/nio/ByteBuffer;

.field b:I

.field c:I

.field d:I

.field e:Ljava/nio/ShortBuffer;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 37
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 39
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IIILjava/nio/ShortBuffer;IIII)V
  .registers 21
  .prologue
  .line 43
    const/4 v10, 0
    move-object v0, p0
    move-object v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move-object/from16 v5, p5
    move/from16 v6, p6
    move/from16 v7, p7
    move/from16 v8, p8
    move/from16 v9, p9
    invoke-direct/range { v0 .. v10 }, Lcom/alipay/zoloz/hardware/camera/a;-><init>(Ljava/nio/ByteBuffer;IIILjava/nio/ShortBuffer;IIIIZ)V
  .line 45
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IIILjava/nio/ShortBuffer;IIIIZ)V
  .registers 11
  .prologue
  .line 48
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 49
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/a;->a:Ljava/nio/ByteBuffer;
  .line 50
    iput p2, p0, Lcom/alipay/zoloz/hardware/camera/a;->b:I
  .line 51
    iput p3, p0, Lcom/alipay/zoloz/hardware/camera/a;->c:I
  .line 52
    iput p4, p0, Lcom/alipay/zoloz/hardware/camera/a;->d:I
  .line 54
    iput-object p5, p0, Lcom/alipay/zoloz/hardware/camera/a;->e:Ljava/nio/ShortBuffer;
  .line 55
    iput p6, p0, Lcom/alipay/zoloz/hardware/camera/a;->f:I
  .line 56
    iput p7, p0, Lcom/alipay/zoloz/hardware/camera/a;->g:I
  .line 58
    iput p8, p0, Lcom/alipay/zoloz/hardware/camera/a;->h:I
  .line 59
    iput p9, p0, Lcom/alipay/zoloz/hardware/camera/a;->i:I
  .line 61
    iput-boolean p10, p0, Lcom/alipay/zoloz/hardware/camera/a;->j:Z
  .line 62
    return-void
.end method

.method public a()Ljava/nio/ByteBuffer;
  .registers 2
  .prologue
  .line 69
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->a:Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public b()I
  .registers 2
  .prologue
  .line 77
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->b:I
    return v0
.end method

.method public c()I
  .registers 2
  .prologue
  .line 85
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->c:I
    return v0
.end method

.method public d()I
  .registers 2
  .prologue
  .line 93
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->d:I
    return v0
.end method

.method public e()Ljava/nio/ShortBuffer;
  .registers 2
  .prologue
  .line 101
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->e:Ljava/nio/ShortBuffer;
    return-object v0
.end method

.method public f()I
  .registers 2
  .prologue
  .line 109
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->f:I
    return v0
.end method

.method public g()I
  .registers 2
  .prologue
  .line 117
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->g:I
    return v0
.end method

.method public h()I
  .registers 2
  .prologue
  .line 125
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->h:I
    return v0
.end method

.method public i()I
  .registers 2
  .prologue
  .line 133
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/a;->i:I
    return v0
.end method
