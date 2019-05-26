.class Lcom/alipay/zoloz/toyger/face/FrameProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static DATE_FORMAT2:Ljava/text/SimpleDateFormat;

.field private a:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

.field private b:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;

.method static constructor <clinit>()V
  .registers 3
  .prologue
  .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "yyyy-MM-dd_HH-mm-ss-SSS"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v0, v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    sput-object v0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->DATE_FORMAT2:Ljava/text/SimpleDateFormat;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 50
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 51
    return-void
.end method

.method public static bitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V
  .catch Ljava/io/FileNotFoundException; { :L0 .. :L1 } :L2
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .registers 5
  .prologue
  .line 176
    invoke-virtual { p1 }, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :L0
  .line 177
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
  :L0
  .line 180
    new-instance v0, Ljava/io/FileOutputStream;
    invoke-direct { v0, p1 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  .line 181
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v2, 90
    invoke-virtual { p0, v1, v2, v0 }, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
  .line 182
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->flush()V
  .line 183
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->close()V
  :L1
  .line 189
    return-void
  :L2
  .line 184
    move-exception v0
  .line 185
    const-string v1, "FrameProcessor"
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L1
  :L3
  .line 186
    move-exception v0
  .line 187
    const-string v1, "FrameProcessor"
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L1
.end method

.method public static close(Ljava/io/OutputStream;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 3
  .prologue
  .line 233
    if-eqz p0, :L1
  :L0
  .line 234
    invoke-virtual { p0 }, Ljava/io/OutputStream;->close()V
  :L1
  .line 239
    return-void
  :L2
  .line 236
    move-exception v0
  .line 237
    const-string v1, "FrameProcessor"
    invoke-virtual { v0 }, Ljava/io/IOException;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
.end method

.method public static getDetailDateFormat(J)Ljava/lang/String;
  .catchall { :L0 .. :L2 } :L1
  .registers 6
  .prologue
  .line 38
    sget-object v1, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->DATE_FORMAT2:Ljava/text/SimpleDateFormat;
    monitor-enter v1
  :L0
  .line 39
    sget-object v0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->DATE_FORMAT2:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;
    invoke-direct { v2, p0, p1 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v0, v2 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    monitor-exit v1
    return-object v0
  :L1
  .line 40
    move-exception v0
    monitor-exit v1
  :L2
    throw v0
.end method

.method public static declared-synchronized save(Ljava/io/File;[B)Z
  .catchall { :L0 .. :L1 } :L12
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L13
  .catchall { :L1 .. :L2 } :L16
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L21
  .catchall { :L2 .. :L3 } :L18
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L22
  .catchall { :L3 .. :L4 } :L19
  .catchall { :L5 .. :L6 } :L12
  .catch Ljava/io/IOException; { :L7 .. :L8 } :L9
  .catchall { :L7 .. :L8 } :L12
  .catchall { :L10 .. :L11 } :L12
  .catchall { :L14 .. :L15 } :L20
  .catchall { :L15 .. :L18 } :L12
  .registers 8
  .prologue
    const/4 v3, 0
  .line 200
    const-class v5, Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    monitor-enter v5
    const/4 v0, 0
  .line 201
    if-eqz p0, :L6
    if-eqz p1, :L6
  :L0
  .line 203
    invoke-virtual { p0 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L7
  .line 204
    invoke-virtual { p0 }, Ljava/io/File;->delete()Z
  :L1
  .line 216
    new-instance v4, Ljava/io/FileOutputStream;
    invoke-direct { v4, p0 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L2
  .line 217
    new-instance v2, Ljava/io/BufferedOutputStream;
    invoke-direct { v2, v4 }, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
  :L3
  .line 218
    invoke-virtual { v2, p1 }, Ljava/io/BufferedOutputStream;->write([B)V
  .line 219
    invoke-virtual { v2 }, Ljava/io/BufferedOutputStream;->flush()V
  :L4
  .line 220
    const/4 v0, 1
  :L5
  .line 224
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->close(Ljava/io/OutputStream;)V
  .line 225
    invoke-static { v4 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->close(Ljava/io/OutputStream;)V
  :L6
  .line 228
    monitor-exit v5
    return v0
  :L7
  .line 207
    invoke-virtual { p0 }, Ljava/io/File;->createNewFile()Z
  :L8
    goto :L1
  :L9
  .line 208
    move-exception v1
  :L10
  .line 209
    const-string v2, "FrameProcessor"
    invoke-static { v2, v1 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
  :L11
    goto :L1
  :L12
  .line 200
    move-exception v0
    monitor-exit v5
    throw v0
  :L13
  .line 221
    move-exception v1
    move-object v2, v3
  :L14
  .line 222
    const-string v4, "FrameProcessor"
    invoke-static { v4, v1 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
  :L15
  .line 224
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->close(Ljava/io/OutputStream;)V
  .line 225
    invoke-static { v3 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->close(Ljava/io/OutputStream;)V
    goto :L6
  :L16
  .line 224
    move-exception v0
    move-object v2, v3
    move-object v4, v3
  :L17
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->close(Ljava/io/OutputStream;)V
  .line 225
    invoke-static { v4 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->close(Ljava/io/OutputStream;)V
    throw v0
  :L18
  .line 224
    move-exception v0
    move-object v2, v3
    goto :L17
  :L19
    move-exception v0
    goto :L17
  :L20
    move-exception v0
    move-object v4, v3
    goto :L17
  :L21
  .line 221
    move-exception v1
    move-object v2, v3
    move-object v3, v4
    goto :L14
  :L22
    move-exception v1
    move-object v3, v4
    goto :L14
.end method

.method public static saveBestBitmap(Landroid/graphics/Bitmap;)V
  .registers 1
  .prologue
  .line 160
    return-void
.end method

.method static saveBitmap(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 72
    return-void
.end method

.method clearFrame()V
  .registers 2
  .prologue
    const/4 v0, 0
  .line 242
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->a:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 243
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->b:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
  .line 244
    return-void
.end method

.method public getTgDepthFrame()Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
  .registers 2
  .prologue
  .line 63
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->b:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    return-object v0
.end method

.method public getTgFrame()Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .registers 2
  .prologue
  .line 59
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->a:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    return-object v0
.end method

.method initFame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
  .registers 3
  .prologue
  .line 54
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->a:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 55
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->b:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
  .line 56
    return-void
.end method

.method saveBitmap(Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Ljava/lang/String;)V
  .registers 5
  .prologue
  .line 67
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->a:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->b:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    invoke-static { v0, v1, p1, p2 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->saveBitmap(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Ljava/lang/String;)V
  .line 68
    return-void
.end method
