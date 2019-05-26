.class public Lcom/alipay/zoloz/toyger/blob/BitmapHelper;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static FRAME_MODE_BGR:I = 2

.field public final static FRAME_MODE_BGRA:I = 1

.field public final static FRAME_MODE_NV21:I = 0

.field public final static FRAME_MODE_RGB:I = 4

.field public final static FRAME_MODE_RGBA:I = 3

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 18
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static Bitmap2BytesEx(Landroid/graphics/Bitmap;)[B
  .registers 9
  .prologue
    const/4 v2, 0
  .line 175
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
  .line 176
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v7
  .line 177
    mul-int v0, v3, v7
    new-array v1, v0, [I
    move-object v0, p0
    move v4, v2
    move v5, v2
    move v6, v3
  .line 178
    invoke-virtual/range { v0 .. v7 }, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
  .line 180
    invoke-static { v1, v3, v7 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->addBMP_RGB_888([III)[B
    move-result-object v0
  .line 182
    return-object v0
.end method

.method public static RGBABytes2Bitmap([BII)Landroid/graphics/Bitmap;
  .registers 5
  .prologue
  .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { p1, p2, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 73
    invoke-static { p0 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
  .line 74
    return-object v0
.end method

.method public static RGBBytes2Bitmap([BII)Landroid/graphics/Bitmap;
  .registers 9
  .prologue
  .line 78
    invoke-static { p0 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->convertBytesToInts([B)[I
    move-result-object v0
  .line 79
    if-nez v0, :L1
  .line 80
    const/4 v0, 0
  :L0
  .line 85
    return-object v0
  :L1
  .line 83
    const/4 v1, 0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    move v2, p1
    move v3, p1
    move v4, p2
    invoke-static/range { v0 .. v5 }, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    goto :L0
.end method

.method private static addBMP_RGB_888([III)[B
  .registers 9
  .prologue
  .line 195
    array-length v0, p0
  .line 197
    mul-int v1, p1, p2
    mul-int/lit8 v1, v1, 4
    new-array v3, v1, [B
  .line 198
    const/4 v1, 0
  .line 201
    add-int/lit8 v0, v0, -1
    move v2, v0
  :L0
    if-lt v2, p1, :L3
  .line 203
    sub-int v0, v2, p1
    add-int/lit8 v0, v0, 1
  :L1
  .line 204
    if-gt v0, v2, :L2
  .line 205
    aget v4, p0, v0
    shr-int/lit8 v4, v4, 0
    int-to-byte v4, v4
    aput-byte v4, v3, v1
  .line 206
    add-int/lit8 v4, v1, 1
    aget v5, p0, v0
    shr-int/lit8 v5, v5, 8
    int-to-byte v5, v5
    aput-byte v5, v3, v4
  .line 207
    add-int/lit8 v4, v1, 2
    aget v5, p0, v0
    shr-int/lit8 v5, v5, 16
    int-to-byte v5, v5
    aput-byte v5, v3, v4
  .line 208
    add-int/lit8 v4, v1, 3
    aget v5, p0, v0
    shr-int/lit8 v5, v5, 24
    int-to-byte v5, v5
    aput-byte v5, v3, v4
  .line 209
    add-int/lit8 v1, v1, 4
  .line 204
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
  .line 201
    sub-int v0, v2, p1
    move v2, v0
    goto :L0
  :L3
  .line 212
    return-object v3
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
  .registers 4
  .prologue
  .line 160
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 161
    if-eqz p0, :L0
  .line 162
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v2, 100
    invoke-virtual { p0, v1, v2, v0 }, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
  :L0
  .line 164
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    return-object v0
.end method

.method public static bitmapToByteArray(Landroid/graphics/Bitmap;I)[B
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 4
  .prologue
  .line 351
    new-instance v1, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v1 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 352
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual { p0, v0, p1, v1 }, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
  :L0
  .line 354
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->flush()V
  .line 355
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L1
  .line 359
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    return-object v0
  :L2
  .line 356
    move-exception v0
  .line 357
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
    goto :L1
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
  .registers 3
  .prologue
  .line 64
    array-length v0, p0
    if-eqz v0, :L1
  .line 65
    const/4 v0, 0
    array-length v1, p0
    invoke-static { p0, v0, v1 }, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    move-result-object v0
  :L0
  .line 67
    return-object v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public static bytes2Bitmap([BIII)Landroid/graphics/Bitmap;
  .registers 5
  .prologue
  .line 46
    packed-switch p3, :L5
  :L0
  .line 60
    const/4 v0, 0
  :L1
    return-object v0
  :L2
  .line 48
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->getYUVBitmap([BII)Landroid/graphics/Bitmap;
    move-result-object v0
    goto :L1
  :L3
  .line 54
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->RGBABytes2Bitmap([BII)Landroid/graphics/Bitmap;
    move-result-object v0
    goto :L1
  :L4
  .line 56
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->RGBBytes2Bitmap([BII)Landroid/graphics/Bitmap;
    move-result-object v0
    goto :L1
  .line 46
  :L5
  .packed-switch 0
    :L2
    :L0
    :L0
    :L3
    :L4
  .end packed-switch
.end method

.method public static compressRGBAImage([BIIII)[B
  .registers 12
  .prologue
    const/4 v1, 0
  .line 381
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->RGBABytes2Bitmap([BII)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 382
    const/16 v2, 90
    if-eq p3, v2, :L0
    const/16 v2, 270
    if-ne p3, v2, :L2
  :L0
  .line 383
    new-instance v5, Landroid/graphics/Matrix;
    invoke-direct { v5 }, Landroid/graphics/Matrix;-><init>()V
  .line 384
    int-to-float v2, p3
    invoke-virtual { v5, v2 }, Landroid/graphics/Matrix;->setRotate(F)V
  .line 385
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
  .line 386
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    const/4 v6, 1
    move v2, v1
  .line 385
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object v2
  .line 387
    invoke-static { v2, p4 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bitmapToByteArray(Landroid/graphics/Bitmap;I)[B
    move-result-object v1
  .line 388
    invoke-virtual { v2 }, Landroid/graphics/Bitmap;->recycle()V
  :L1
  .line 392
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->recycle()V
  .line 393
    return-object v1
  :L2
  .line 390
    invoke-static { v0, p4 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bitmapToByteArray(Landroid/graphics/Bitmap;I)[B
    move-result-object v1
    goto :L1
.end method

.method public static compressRGBImage([BIIII)[B
  .registers 12
  .prologue
    const/4 v1, 0
  .line 364
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->RGBBytes2Bitmap([BII)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 365
    const/16 v2, 90
    if-eq p3, v2, :L0
    const/16 v2, 270
    if-ne p3, v2, :L2
  :L0
  .line 366
    new-instance v5, Landroid/graphics/Matrix;
    invoke-direct { v5 }, Landroid/graphics/Matrix;-><init>()V
  .line 367
    int-to-float v2, p3
    invoke-virtual { v5, v2 }, Landroid/graphics/Matrix;->setRotate(F)V
  .line 368
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
  .line 369
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    const/4 v6, 1
    move v2, v1
  .line 368
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object v2
  .line 370
    invoke-static { v2, p4 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bitmapToByteArray(Landroid/graphics/Bitmap;I)[B
    move-result-object v1
  .line 371
    invoke-virtual { v2 }, Landroid/graphics/Bitmap;->recycle()V
  :L1
  .line 375
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->recycle()V
  .line 376
    return-object v1
  :L2
  .line 373
    invoke-static { v0, p4 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bitmapToByteArray(Landroid/graphics/Bitmap;I)[B
    move-result-object v1
    goto :L1
.end method

.method public static convertByteToInt(B)I
  .registers 3
  .prologue
  .line 89
    shr-int/lit8 v0, p0, 4
    and-int/lit8 v0, v0, 15
  .line 90
    and-int/lit8 v1, p0, 15
  .line 91
    mul-int/lit8 v0, v0, 16
    add-int/2addr v0, v1
    return v0
.end method

.method public static convertBytesToInts([B)[I
  .registers 8
  .prologue
    const/4 v1, 0
    const/high16 v6, -256
  .line 95
    array-length v2, p0
  .line 96
    if-nez v2, :L1
  .line 97
    const/4 v0, 0
  :L0
  .line 127
    return-object v0
  :L1
  .line 101
    rem-int/lit8 v0, v2, 3
    if-eqz v0, :L7
  .line 102
    const/4 v0, 1
  :L2
  .line 105
    div-int/lit8 v2, v2, 3
    add-int/2addr v2, v0
    new-array v2, v2, [I
  .line 107
    array-length v3, v2
  .line 108
    if-nez v0, :L4
  :L3
  .line 109
    if-ge v1, v3, :L6
  .line 110
    mul-int/lit8 v0, v1, 3
    aget-byte v0, p0, v0
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->convertByteToInt(B)I
    move-result v0
  .line 111
    mul-int/lit8 v4, v1, 3
    add-int/lit8 v4, v4, 1
    aget-byte v4, p0, v4
    invoke-static { v4 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->convertByteToInt(B)I
    move-result v4
  .line 112
    mul-int/lit8 v5, v1, 3
    add-int/lit8 v5, v5, 2
    aget-byte v5, p0, v5
    invoke-static { v5 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->convertByteToInt(B)I
    move-result v5
  .line 114
    shl-int/lit8 v0, v0, 16
    shl-int/lit8 v4, v4, 8
    or-int/2addr v0, v4
    or-int/2addr v0, v5
    or-int/2addr v0, v6
    aput v0, v2, v1
  .line 109
    add-int/lit8 v1, v1, 1
    goto :L3
  :L4
  .line 117
    add-int/lit8 v0, v3, -1
    if-ge v1, v0, :L5
  .line 118
    mul-int/lit8 v0, v1, 3
    aget-byte v0, p0, v0
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->convertByteToInt(B)I
    move-result v0
  .line 119
    mul-int/lit8 v4, v1, 3
    add-int/lit8 v4, v4, 1
    aget-byte v4, p0, v4
    invoke-static { v4 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->convertByteToInt(B)I
    move-result v4
  .line 120
    mul-int/lit8 v5, v1, 3
    add-int/lit8 v5, v5, 2
    aget-byte v5, p0, v5
    invoke-static { v5 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->convertByteToInt(B)I
    move-result v5
  .line 121
    shl-int/lit8 v0, v0, 16
    shl-int/lit8 v4, v4, 8
    or-int/2addr v0, v4
    or-int/2addr v0, v5
    or-int/2addr v0, v6
    aput v0, v2, v1
  .line 117
    add-int/lit8 v1, v1, 1
    goto :L4
  :L5
  .line 124
    add-int/lit8 v0, v3, -1
    aput v6, v2, v0
  :L6
    move-object v0, v2
  .line 127
    goto :L0
  :L7
    move v0, v1
    goto :L2
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
  .registers 7
  .prologue
  .line 556
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
  .line 557
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
  .line 559
    iget v0, p1, Landroid/graphics/Rect;->left:I
    iget v1, p1, Landroid/graphics/Rect;->top:I
    iget v2, p1, Landroid/graphics/Rect;->right:I
    iget v3, p1, Landroid/graphics/Rect;->left:I
    sub-int/2addr v2, v3
    iget v3, p1, Landroid/graphics/Rect;->bottom:I
    iget v4, p1, Landroid/graphics/Rect;->top:I
    sub-int/2addr v3, v4
    invoke-static { p0, v0, v1, v2, v3 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method

.method public static getBitmap([BII)Landroid/graphics/Bitmap;
  .registers 9
  .prologue
  .line 280
  .line 282
    if-nez p0, :L1
  .line 283
    const/4 v0, 0
  :L0
  .line 300
    return-object v0
  :L1
  .line 286
    array-length v0, p0
    div-int/lit8 v4, v0, 3
  .line 287
    new-array v5, v4, [I
  .line 288
    const/4 v0, 0
    move v3, v0
  :L2
    if-ge v3, v4, :L6
  .line 289
    mul-int/lit8 v0, v3, 3
    aget-byte v2, p0, v0
  .line 290
    mul-int/lit8 v0, v3, 3
    add-int/lit8 v0, v0, 1
    aget-byte v1, p0, v0
  .line 291
    mul-int/lit8 v0, v3, 3
    add-int/lit8 v0, v0, 2
    aget-byte v0, p0, v0
  .line 292
    if-gez v2, :L3
    add-int/lit16 v2, v2, 256
  :L3
  .line 293
    if-gez v1, :L4
    add-int/lit16 v1, v1, 256
  :L4
  .line 294
    if-gez v0, :L5
    add-int/lit16 v0, v0, 256
  :L5
  .line 295
    invoke-static { v2, v1, v0 }, Landroid/graphics/Color;->rgb(III)I
    move-result v0
    aput v0, v5, v3
  .line 288
    add-int/lit8 v0, v3, 1
    move v3, v0
    goto :L2
  :L6
  .line 298
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v5, p1, p2, v0 }, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    goto :L0
.end method

.method public static getYUVBitmap([BII)Landroid/graphics/Bitmap;
  .catch Ljava/lang/OutOfMemoryError; { :L0 .. :L1 } :L4
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L3
  .registers 10
  .prologue
    const/4 v5, 0
    const/4 v6, 0
  .line 304
  .line 305
    new-instance v0, Landroid/graphics/YuvImage;
    const/16 v2, 17
    move-object v1, p0
    move v3, p1
    move v4, p2
    invoke-direct/range { v0 .. v5 }, Landroid/graphics/YuvImage;-><init>([BIII[I)V
  .line 306
    new-instance v1, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v1 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 307
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2, v6, v6, p1, p2 }, Landroid/graphics/Rect;-><init>(IIII)V
    const/16 v3, 100
    invoke-virtual { v0, v2, v3, v1 }, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
  :L0
  .line 311
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
  .line 312
    const/4 v1, 0
    array-length v2, v0
    invoke-static { v0, v1, v2 }, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
  :L1
    move-result-object v5
  :L2
  .line 316
    return-object v5
  :L3
  .line 314
    move-exception v0
    goto :L2
  :L4
  .line 313
    move-exception v0
    goto :L2
.end method

.method public static getYUVBitmap([BIII)Landroid/graphics/Bitmap;
  .catch Ljava/lang/OutOfMemoryError; { :L0 .. :L1 } :L3
  .registers 11
  .prologue
    const/4 v5, 0
    const/4 v6, 0
  .line 320
  .line 321
    new-instance v0, Landroid/graphics/YuvImage;
    const/16 v2, 17
    move-object v1, p0
    move v3, p1
    move v4, p2
    invoke-direct/range { v0 .. v5 }, Landroid/graphics/YuvImage;-><init>([BIII[I)V
  .line 322
    new-instance v1, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v1 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 323
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2, v6, v6, p1, p2 }, Landroid/graphics/Rect;-><init>(IIII)V
    invoke-virtual { v0, v2, p3, v1 }, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
  .line 324
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
  .line 326
    const/4 v1, 0
  :L0
    array-length v2, v0
    invoke-static { v0, v1, v2 }, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
  :L1
    move-result-object v5
  :L2
  .line 329
    return-object v5
  :L3
  .line 327
    move-exception v0
    goto :L2
.end method

.method public static processImage([BIIIII)[B
  .registers 7
  .prologue
  .line 333
    packed-switch p1, :L5
  :L0
  .line 347
    const/4 v0, 0
  :L1
    return-object v0
  :L2
  .line 335
    invoke-static { p0, p2, p3, p4, p5 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateYUVImage([BIIII)[B
    move-result-object v0
    goto :L1
  :L3
  .line 341
    invoke-static { p0, p2, p3, p4, p5 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->compressRGBAImage([BIIII)[B
    move-result-object v0
    goto :L1
  :L4
  .line 343
    invoke-static { p0, p2, p3, p4, p5 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->compressRGBImage([BIIII)[B
    move-result-object v0
    goto :L1
  .line 333
  :L5
  .packed-switch 0
    :L2
    :L0
    :L0
    :L3
    :L4
  .end packed-switch
.end method

.method public static readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
  .registers 5
  .prologue
    const/4 v2, 1
  .line 132
    new-instance v0, Landroid/graphics/BitmapFactory$Options;
    invoke-direct { v0 }, Landroid/graphics/BitmapFactory$Options;-><init>()V
  .line 134
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
  .line 136
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
  .line 138
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
  .line 142
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, p1 }, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    move-result-object v1
  .line 144
    const/4 v2, 0
    invoke-static { v1, v2, v0 }, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method

.method public static recycle(Landroid/graphics/Bitmap;)V
  .registers 2
  .prologue
  .line 265
    if-eqz p0, :L0
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v0
    if-nez v0, :L0
  .line 266
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->recycle()V
  :L0
  .line 269
    return-void
.end method

.method public static resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
  .registers 9
  .prologue
    const/4 v1, 0
  .line 247
    const/4 v0, 0
  .line 248
    if-eqz p0, :L0
  .line 249
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
  .line 250
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
  .line 252
    int-to-float v0, p1
    int-to-float v2, v3
    div-float/2addr v0, v2
  .line 254
    new-instance v5, Landroid/graphics/Matrix;
    invoke-direct { v5 }, Landroid/graphics/Matrix;-><init>()V
  .line 255
    invoke-virtual { v5, v0, v0 }, Landroid/graphics/Matrix;->postScale(FF)Z
  .line 257
    const/4 v6, 1
    move-object v0, p0
    move v2, v1
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 258
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->recycle()V
  :L0
  .line 260
    return-object v0
.end method

.method public static resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
  .registers 10
  .prologue
    const/4 v1, 0
  .line 222
    const/4 v0, 0
  .line 223
    if-eqz p0, :L0
  .line 224
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
  .line 225
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
  .line 227
    int-to-float v0, p1
    int-to-float v2, v3
    div-float/2addr v0, v2
  .line 228
    int-to-float v2, p2
    int-to-float v5, v4
    div-float/2addr v2, v5
  .line 230
    new-instance v5, Landroid/graphics/Matrix;
    invoke-direct { v5 }, Landroid/graphics/Matrix;-><init>()V
  .line 231
    invoke-virtual { v5, v0, v2 }, Landroid/graphics/Matrix;->postScale(FF)Z
  .line 233
    const/4 v6, 1
    move-object v0, p0
    move v2, v1
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 235
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->recycle()V
  :L0
  .line 238
    return-object v0
.end method

.method public static reverseBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
  .registers 9
  .prologue
    const/4 v0, 0
    const/16 v2, 9
    const/4 v1, 0
  .line 515
    if-nez p0, :L1
  :L0
  .line 535
    return-object v0
  :L1
  .line 519
    packed-switch p1, :L4
  .line 525
    new-array v2, v2, [F
    fill-array-data v2, :L5
  :L2
  .line 529
    if-eqz v2, :L0
  .line 530
    new-instance v5, Landroid/graphics/Matrix;
    invoke-direct { v5 }, Landroid/graphics/Matrix;-><init>()V
  .line 531
    invoke-virtual { v5, v2 }, Landroid/graphics/Matrix;->setValues([F)V
  .line 532
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    const/4 v6, 1
    move-object v0, p0
    move v2, v1
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object v0
    goto :L0
  :L3
  .line 521
    new-array v2, v2, [F
    fill-array-data v2, :L6
    goto :L2
  .line 519
  .line 525
  .line 521
  :L4
  .packed-switch 0
    :L3
  .end packed-switch
  :L5
  .array-data 4
    0t 0t -128t 63t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
  :L6
  .array-data 4
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
  .registers 9
  .prologue
    const/4 v1, 0
  .line 539
    if-nez p0, :L1
  .line 540
    const/4 v0, 0
  :L0
  .line 552
    return-object v0
  :L1
  .line 542
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
  .line 543
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
  .line 544
    new-instance v5, Landroid/graphics/Matrix;
    invoke-direct { v5 }, Landroid/graphics/Matrix;-><init>()V
  .line 545
    int-to-float v0, p1
    invoke-virtual { v5, v0 }, Landroid/graphics/Matrix;->setRotate(F)V
    move-object v0, p0
    move v2, v1
    move v6, v1
  .line 547
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 548
    invoke-virtual { v0, p0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 551
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->recycle()V
    goto :L0
.end method

.method private static rotateYUV420Degree180([BII)[B
  .registers 8
  .prologue
  .line 451
    mul-int v0, p1, p2
    mul-int/lit8 v0, v0, 3
    div-int/lit8 v0, v0, 2
    new-array v2, v0, [B
  .line 453
    const/4 v0, 0
  .line 454
    mul-int v1, p1, p2
    add-int/lit8 v1, v1, -1
  :L0
    if-ltz v1, :L1
  .line 455
    aget-byte v3, p0, v1
    aput-byte v3, v2, v0
  .line 456
    add-int/lit8 v0, v0, 1
  .line 454
    add-int/lit8 v1, v1, -1
    goto :L0
  :L1
  .line 458
    mul-int v1, p1, p2
    mul-int/lit8 v1, v1, 3
    div-int/lit8 v1, v1, 2
    add-int/lit8 v1, v1, -1
  .line 459
    mul-int v1, p1, p2
    mul-int/lit8 v1, v1, 3
    div-int/lit8 v1, v1, 2
    add-int/lit8 v1, v1, -1
  :L2
    mul-int v3, p1, p2
    if-lt v1, v3, :L3
  .line 461
    add-int/lit8 v3, v0, 1
    add-int/lit8 v4, v1, -1
    aget-byte v4, p0, v4
    aput-byte v4, v2, v0
  .line 462
    add-int/lit8 v0, v3, 1
    aget-byte v4, p0, v1
    aput-byte v4, v2, v3
  .line 460
    add-int/lit8 v1, v1, -2
    goto :L2
  :L3
  .line 464
    return-object v2
.end method

.method public static rotateYUV420Degree270([BII)[B
  .registers 4
  .prologue
  .line 468
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateYUV420Degree90([BII)[B
    move-result-object v0
  .line 469
    invoke-static { v0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateYUV420Degree180([BII)[B
    move-result-object v0
    return-object v0
.end method

.method private static rotateYUV420Degree90([BII)[B
  .registers 10
  .prologue
    const/4 v1, 0
  .line 428
    mul-int v0, p1, p2
    mul-int/lit8 v0, v0, 3
    div-int/lit8 v0, v0, 2
    new-array v4, v0, [B
    move v3, v1
    move v2, v1
  :L0
  .line 431
    if-ge v3, p1, :L3
  .line 432
    add-int/lit8 v0, p2, -1
  :L1
    if-ltz v0, :L2
  .line 433
    mul-int v5, v0, p1
    add-int/2addr v5, v3
    aget-byte v5, p0, v5
    aput-byte v5, v4, v2
  .line 434
    add-int/lit8 v2, v2, 1
  .line 432
    add-int/lit8 v0, v0, -1
    goto :L1
  :L2
  .line 431
    add-int/lit8 v0, v3, 1
    move v3, v0
    goto :L0
  :L3
  .line 438
    mul-int v0, p1, p2
    mul-int/lit8 v0, v0, 3
    div-int/lit8 v0, v0, 2
    add-int/lit8 v2, v0, -1
  .line 439
    add-int/lit8 v0, p1, -1
    move v3, v0
    move v0, v2
  :L4
    if-lez v3, :L7
    move v2, v0
    move v0, v1
  :L5
  .line 440
    div-int/lit8 v5, p2, 2
    if-ge v0, v5, :L6
  .line 441
    mul-int v5, p1, p2
    mul-int v6, v0, p1
    add-int/2addr v5, v6
    add-int/2addr v5, v3
    aget-byte v5, p0, v5
    aput-byte v5, v4, v2
  .line 442
    add-int/lit8 v2, v2, -1
  .line 443
    mul-int v5, p1, p2
    mul-int v6, v0, p1
    add-int/2addr v5, v6
    add-int/lit8 v6, v3, -1
    add-int/2addr v5, v6
    aget-byte v5, p0, v5
    aput-byte v5, v4, v2
  .line 444
    add-int/lit8 v2, v2, -1
  .line 440
    add-int/lit8 v0, v0, 1
    goto :L5
  :L6
  .line 439
    add-int/lit8 v0, v3, -2
    move v3, v0
    move v0, v2
    goto :L4
  :L7
  .line 447
    return-object v4
.end method

.method public static rotateYUVImage([BIIII)[B
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L5
  .registers 13
  .prologue
    const/4 v7, 0
  .line 397
  .line 401
    const/16 v0, 90
    if-ne p3, v0, :L3
  .line 402
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateYUV420Degree270([BII)[B
    move-result-object v1
    move v4, p1
    move v3, p2
  :L0
  .line 415
    new-instance v6, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v6 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 416
    if-eqz v1, :L1
  .line 417
    new-instance v0, Landroid/graphics/YuvImage;
    const/16 v2, 17
    const/4 v5, 0
    invoke-direct/range { v0 .. v5 }, Landroid/graphics/YuvImage;-><init>([BIII[I)V
  .line 418
    new-instance v1, Landroid/graphics/Rect;
    invoke-direct { v1, v7, v7, v3, v4 }, Landroid/graphics/Rect;-><init>(IIII)V
    invoke-virtual { v0, v1, p4, v6 }, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
  :L1
  .line 421
    invoke-virtual { v6 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L2
  .line 424
    invoke-virtual { v6 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    return-object v0
  :L3
  .line 405
    const/16 v0, 270
    if-ne p3, v0, :L4
  .line 406
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateYUV420Degree90([BII)[B
    move-result-object v1
    move v4, p1
    move v3, p2
  .line 408
    goto :L0
  :L4
    move v4, p2
    move v3, p1
    move-object v1, p0
  .line 412
    goto :L0
  :L5
  .line 422
    move-exception v0
    goto :L2
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
  .registers 10
  .prologue
    const/4 v1, 0
  .line 149
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
  .line 150
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
  .line 151
    new-instance v5, Landroid/graphics/Matrix;
    invoke-direct { v5 }, Landroid/graphics/Matrix;-><init>()V
  .line 152
    int-to-float v0, p1
    int-to-float v2, v3
    div-float/2addr v0, v2
  .line 153
    int-to-float v2, p2
    int-to-float v6, v4
    div-float/2addr v2, v6
  .line 154
    invoke-virtual { v5, v0, v2 }, Landroid/graphics/Matrix;->postScale(FF)Z
  .line 155
    const/4 v6, 1
    move-object v0, p0
    move v2, v1
    invoke-static/range { v0 .. v6 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 156
    return-object v0
.end method
