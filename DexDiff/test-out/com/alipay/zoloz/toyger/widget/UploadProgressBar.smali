.class public Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;
.super Landroid/view/View;
.source "SourceFile"

.field public final static FILL:I = 1

.field public final static STROKE:I

.field final ANGLE_STEP:I

.field private backColorWidth:F

.field private backgroundColor:I

.field private endAngle:I

.field public mBitmapShader:Landroid/graphics/BitmapShader;

.field private mMainHandle:Landroid/os/Handler;

.field private mMatrix:Landroid/graphics/Matrix;

.field mProgressAngle:I

.field private mWidth:I

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private radius:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundShader:Z

.field private roundWidth:F

.field private secondProgressColor:I

.field private startAngle:I

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .prologue
  .line 93
    const/4 v0, 0
    invoke-direct { p0, p1, v0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .prologue
  .line 97
    const/4 v0, 0
    invoke-direct { p0, p1, p2, v0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 10
  .prologue
    const/4 v5, 0
    const v4, -16711936
    const/4 v3, 0
  .line 115
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 81
    iput v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->style:I
  .line 87
    iput v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->radius:I
  .line 246
    iput v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mProgressAngle:I
  .line 247
    const/16 v0, 120
    iput v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->ANGLE_STEP:I
  .line 117
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
  .line 119
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mMainHandle:Landroid/os/Handler;
  .line 120
    sget-object v0, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar:[I
  .line 121
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 124
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_round_color:I
    const/high16 v2, -1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundColor:I
  .line 125
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_round_progress_color:I
    invoke-virtual { v0, v1, v4 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundProgressColor:I
  .line 127
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_round_progress_color:I
    invoke-virtual { v0, v1, v4 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->secondProgressColor:I
  .line 130
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_text_color:I
    invoke-virtual { v0, v1, v4 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textColor:I
  .line 131
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_text_size:I
    const/high16 v2, 16752
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textSize:F
  .line 132
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_round_width:I
    const/high16 v2, 16544
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundWidth:F
  .line 133
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_max:I
    const/16 v2, 100
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
  .line 134
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_text_is_displayable:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v1
    iput-boolean v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textIsDisplayable:Z
  .line 136
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_style:I
    invoke-virtual { v0, v1, v3 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->style:I
  .line 137
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_progress_shader:I
    invoke-virtual { v0, v1, v3 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v1
    iput-boolean v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundShader:Z
  .line 138
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_color_bg_width:I
    invoke-virtual { v0, v1, v5 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->backColorWidth:F
  .line 140
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_start_angle:I
    invoke-virtual { v0, v1, v3 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->startAngle:I
  .line 144
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_end_angle:I
    const/16 v2, 360
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->endAngle:I
  .line 145
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_background_color:I
    const/4 v2, -1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->backgroundColor:I
  .line 146
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->backColorWidth:F
    cmpl-float v1, v1, v5
    if-lez v1, :L0
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundShader:Z
    if-eqz v1, :L0
  .line 149
    new-instance v1, Landroid/graphics/Matrix;
    invoke-direct { v1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mMatrix:Landroid/graphics/Matrix;
  .line 151
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Lcom/alipay/zoloz/toyger/R$drawable;->circle_bg:I
    invoke-static { v1, v2 }, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 154
    new-instance v2, Landroid/graphics/BitmapShader;
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
    invoke-direct { v2, v1, v3, v4 }, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
  .line 160
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->backColorWidth:F
    float-to-int v2, v2
    iput v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mWidth:I
  .line 163
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v1
    invoke-static { v2, v1 }, Ljava/lang/Math;->min(II)I
    move-result v1
  .line 164
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mWidth:I
    int-to-float v2, v2
    const/high16 v3, 16256
    mul-float/2addr v2, v3
    int-to-float v1, v1
    div-float v1, v2, v1
  .line 168
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v2, v1, v1 }, Landroid/graphics/Matrix;->setScale(FF)V
  .line 170
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v1, v2 }, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
  :L0
  .line 174
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 175
    return-void
.end method

.method private paintStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
  .registers 13
  .prologue
    const/16 v6, 120
    const/4 v4, 0
  .line 250
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 251
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
    if-eqz v0, :L0
  .line 252
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  :L0
  .line 256
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->startAngle:I
    add-int/lit16 v7, v0, 180
  .line 258
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->startAngle:I
    mul-int/lit8 v0, v0, 2
    rsub-int v8, v0, 180
  .line 261
    int-to-float v2, v7
    int-to-float v3, v8
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    move-object v1, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 263
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mProgressAngle:I
    rem-int/lit16 v1, v0, 360
  .line 268
    if-ge v1, v7, :L5
  .line 269
    add-int/lit8 v0, v1, 120
    if-le v0, v7, :L13
  .line 270
    add-int/lit8 v0, v1, 120
    sub-int/2addr v0, v7
    move v1, v7
  :L1
  .line 287
    if-lez v0, :L2
  .line 288
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundProgressColor:I
    invoke-virtual { v2, v3 }, Landroid/graphics/Paint;->setColor(I)V
  .line 289
    int-to-float v2, v1
    int-to-float v3, v0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    move-object v1, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  :L2
  .line 292
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mProgressAngle:I
    rem-int/lit16 v8, v0, 360
  .line 297
    iget v7, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->startAngle:I
  .line 299
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->startAngle:I
    mul-int/lit8 v0, v0, 2
    rsub-int v9, v0, 180
  .line 302
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundColor:I
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 304
    int-to-float v2, v7
    int-to-float v3, v9
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    move-object v1, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 307
    if-ge v8, v7, :L8
  .line 308
    add-int/lit8 v0, v8, 120
    if-le v0, v7, :L12
  .line 309
    add-int/lit8 v0, v8, 120
    sub-int/2addr v0, v7
    move v1, v7
  :L3
  .line 328
    if-lez v0, :L11
  .line 329
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundProgressColor:I
    invoke-virtual { v2, v3 }, Landroid/graphics/Paint;->setColor(I)V
  .line 330
    int-to-float v2, v1
    int-to-float v3, v0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    move-object v1, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  :L4
  .line 344
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  .line 345
    return-void
  :L5
  .line 275
    add-int v0, v7, v8
    if-le v1, v0, :L6
    move v0, v4
    goto :L1
  :L6
  .line 279
    add-int/lit8 v0, v1, 120
    add-int v2, v7, v8
    if-ge v0, v2, :L7
    move v0, v6
  .line 280
    goto :L1
  :L7
  .line 282
    add-int v0, v7, v8
    sub-int/2addr v0, v1
    goto :L1
  :L8
  .line 314
    add-int v0, v7, v9
    if-le v8, v0, :L9
    move v0, v4
    move v1, v8
    goto :L3
  :L9
  .line 318
    add-int/lit8 v0, v8, 120
    add-int v1, v7, v9
    if-ge v0, v1, :L10
    move v0, v6
    move v1, v8
  .line 320
    goto :L3
  :L10
  .line 322
    add-int v0, v7, v9
    sub-int/2addr v0, v8
    move v1, v8
    goto :L3
  :L11
  .line 333
    const/16 v0, 270
    if-le v1, v0, :L4
  .line 334
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mProgressAngle:I
    add-int/lit8 v0, v0, 120
    rem-int/lit16 v0, v0, 360
  .line 335
    const/16 v1, 180
    if-ge v0, v1, :L4
    if-le v0, v7, :L4
  .line 336
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundProgressColor:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 337
    int-to-float v2, v7
    sub-int/2addr v0, v7
    int-to-float v3, v0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    move-object v1, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    goto :L4
  :L12
    move v0, v4
    move v1, v8
    goto :L3
  :L13
    move v0, v4
    goto/16 :L1
.end method

.method public getCricleColor()I
  .registers 2
  .prologue
  .line 412
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundColor:I
    return v0
.end method

.method public getCricleProgressColor()I
  .registers 2
  .prologue
  .line 420
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundProgressColor:I
    return v0
.end method

.method public declared-synchronized getMax()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
  .prologue
  .line 358
    monitor-enter p0
  :L0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized getProgress()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
  .prologue
  .line 379
    monitor-enter p0
  :L0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->progress:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public getRadius()I
  .registers 2
  .prologue
  .line 84
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->radius:I
    return v0
.end method

.method public getRoundWidth()F
  .registers 2
  .prologue
  .line 444
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundWidth:F
    return v0
.end method

.method public getTextColor()I
  .registers 2
  .prologue
  .line 428
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textColor:I
    return v0
.end method

.method public getTextSize()F
  .registers 2
  .prologue
  .line 436
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textSize:F
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 9
  .prologue
    const/4 v4, 1
    const/high16 v6, 16384
  .line 180
    invoke-super { p0, p1 }, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
  .line 185
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->getWidth()I
    move-result v0
    div-int/lit8 v0, v0, 2
  .line 186
    int-to-float v1, v0
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundWidth:F
    div-float/2addr v2, v6
    sub-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->radius:I
  .line 187
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundColor:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 188
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 189
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundWidth:F
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 190
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    invoke-virtual { v1, v4 }, Landroid/graphics/Paint;->setAntiAlias(Z)V
  .line 191
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 193
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->backgroundColor:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 202
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 203
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textColor:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 204
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textSize:F
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 205
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 206
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->progress:I
    int-to-float v1, v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
    int-to-float v2, v2
    div-float/2addr v1, v2
    const/high16 v2, 17096
    mul-float/2addr v1, v2
    float-to-int v1, v1
  .line 207
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v5, "%"
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v2
  .line 209
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    const/4 v5, 0
    invoke-virtual { v3, v5 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  .line 210
    iget-boolean v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textIsDisplayable:Z
    if-eqz v3, :L0
    if-eqz v1, :L0
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->style:I
    if-nez v3, :L0
  .line 212
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v3, "%"
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    int-to-float v3, v0
    div-float/2addr v2, v6
    sub-float v2, v3, v2
    int-to-float v3, v0
    iget v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textSize:F
    div-float/2addr v5, v6
    add-float/2addr v3, v5
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    invoke-virtual { p1, v1, v2, v3, v5 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  :L0
  .line 220
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundWidth:F
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 222
    new-instance v1, Landroid/graphics/RectF;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->radius:I
    sub-int v2, v0, v2
    int-to-float v2, v2
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->radius:I
    sub-int v3, v0, v3
    int-to-float v3, v3
    iget v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->radius:I
    add-int/2addr v5, v0
    int-to-float v5, v5
    iget v6, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->radius:I
    add-int/2addr v0, v6
    int-to-float v0, v0
    invoke-direct { v1, v2, v3, v5, v0 }, Landroid/graphics/RectF;-><init>(FFFF)V
  .line 226
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundColor:I
    invoke-virtual { v0, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 229
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->style:I
    packed-switch v0, :L4
  :L1
  .line 244
    return-void
  :L2
  .line 231
    invoke-direct { p0, p1, v1 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paintStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    goto :L1
  :L3
  .line 236
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 237
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->progress:I
    if-eqz v0, :L1
  .line 238
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->startAngle:I
    add-int/lit8 v0, v0, 90
    int-to-float v2, v0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->endAngle:I
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->startAngle:I
    sub-int/2addr v0, v3
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->progress:I
    mul-int/2addr v0, v3
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
    div-int/2addr v0, v3
    int-to-float v3, v0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    goto :L1
  .line 229
  :L4
  .packed-switch 0
    :L2
    :L3
  .end packed-switch
.end method

.method public setBackgroundColor(I)V
  .registers 2
  .prologue
  .line 348
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->backgroundColor:I
  .line 349
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->postInvalidate()V
  .line 350
    return-void
.end method

.method public setCricleColor(I)V
  .registers 2
  .prologue
  .line 416
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundColor:I
  .line 417
    return-void
.end method

.method public setCricleProgressColor(I)V
  .registers 2
  .prologue
  .line 424
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundProgressColor:I
  .line 425
    return-void
.end method

.method public declared-synchronized setMax(I)V
  .catchall { :L0 .. :L1 } :L1
  .catchall { :L2 .. :L3 } :L1
  .registers 4
  .prologue
  .line 367
    monitor-enter p0
    if-gez p1, :L2
  :L0
  .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "max not less than 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 367
    move-exception v0
    monitor-exit p0
    throw v0
  :L2
  .line 370
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
  :L3
  .line 371
    monitor-exit p0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
  .catchall { :L0 .. :L1 } :L1
  .catchall { :L2 .. :L4 } :L1
  .registers 4
  .prologue
  .line 389
    monitor-enter p0
    if-gez p1, :L2
  :L0
  .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "progress not less than 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 389
    move-exception v0
    monitor-exit p0
    throw v0
  :L2
  .line 392
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
    if-le p1, v0, :L3
  .line 393
    iget p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
  :L3
  .line 395
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->max:I
    if-gt p1, v0, :L4
  .line 396
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->progress:I
  .line 397
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->postInvalidate()V
  :L4
  .line 400
    monitor-exit p0
    return-void
.end method

.method public declared-synchronized setProgressAngle(I)V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
  .prologue
  .line 405
    monitor-enter p0
  :L0
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->mProgressAngle:I
  .line 406
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->postInvalidate()V
  :L1
  .line 409
    monitor-exit p0
    return-void
  :L2
  .line 405
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public setRoundColor(I)V
  .registers 2
  .prologue
  .line 353
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundColor:I
  .line 354
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->postInvalidate()V
  .line 355
    return-void
.end method

.method public setRoundWidth(F)V
  .registers 2
  .prologue
  .line 448
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->roundWidth:F
  .line 449
    return-void
.end method

.method public setTextColor(I)V
  .registers 2
  .prologue
  .line 432
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textColor:I
  .line 433
    return-void
.end method

.method public setTextSize(F)V
  .registers 2
  .prologue
  .line 440
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->textSize:F
  .line 441
    return-void
.end method
