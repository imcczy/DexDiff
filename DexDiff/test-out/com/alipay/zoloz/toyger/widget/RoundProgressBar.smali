.class public Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
.super Landroid/view/View;
.source "SourceFile"

.field public final static FILL:I = 1

.field public final static STROKE:I

.field private backColorWidth:F

.field private backgroundColor:I

.field private endAngle:I

.field public mBitmapShader:Landroid/graphics/BitmapShader;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mWidth:I

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private radius:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundShader:Z

.field private roundWidth:F

.field private startAngle:I

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .prologue
  .line 89
    const/4 v0, 0
    invoke-direct { p0, p1, v0 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .prologue
  .line 93
    const/4 v0, 0
    invoke-direct { p0, p1, p2, v0 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 10
  .prologue
    const v5, -16711936
    const/4 v4, 0
    const/4 v3, 0
  .line 110
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 77
    iput v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->style:I
  .line 83
    iput v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
  .line 112
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
  .line 115
    sget-object v0, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar:[I
  .line 116
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 119
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_round_color:I
    const/high16 v2, -1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundColor:I
  .line 120
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_round_progress_color:I
    invoke-virtual { v0, v1, v5 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundProgressColor:I
  .line 122
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_text_color:I
    invoke-virtual { v0, v1, v5 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textColor:I
  .line 123
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_text_size:I
    const/high16 v2, 16752
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textSize:F
  .line 124
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_round_width:I
    const/high16 v2, 16544
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundWidth:F
  .line 125
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_max:I
    const/16 v2, 100
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getInteger(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
  .line 126
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_text_is_displayable:I
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v1
    iput-boolean v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textIsDisplayable:Z
  .line 128
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_style:I
    invoke-virtual { v0, v1, v3 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->style:I
  .line 129
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_progress_shader:I
    invoke-virtual { v0, v1, v3 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v1
    iput-boolean v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundShader:Z
  .line 130
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_color_bg_width:I
    invoke-virtual { v0, v1, v4 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->backColorWidth:F
  .line 132
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_start_angle:I
    invoke-virtual { v0, v1, v3 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
  .line 134
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "bio startAngle:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 136
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_end_angle:I
    const/16 v2, 360
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->endAngle:I
  .line 137
    sget v1, Lcom/alipay/zoloz/toyger/R$styleable;->eye_round_progressBar_eye_background_color:I
    const/4 v2, -1
    invoke-virtual { v0, v1, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->backgroundColor:I
  .line 138
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->backColorWidth:F
    cmpl-float v1, v1, v4
    if-lez v1, :L0
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundShader:Z
    if-eqz v1, :L0
  .line 141
    new-instance v1, Landroid/graphics/Matrix;
    invoke-direct { v1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mMatrix:Landroid/graphics/Matrix;
  .line 142
    sget v1, Lcom/alipay/zoloz/toyger/R$drawable;->circle_bg:I
    invoke-static { p1, v1 }, Lcom/alipay/mobile/security/bio/utils/BitmapHelper;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 146
    new-instance v2, Landroid/graphics/BitmapShader;
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
    invoke-direct { v2, v1, v3, v4 }, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
  .line 152
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->backColorWidth:F
    float-to-int v2, v2
    iput v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mWidth:I
  .line 155
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v1
    invoke-static { v2, v1 }, Ljava/lang/Math;->min(II)I
    move-result v1
  .line 156
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mWidth:I
    int-to-float v2, v2
    const/high16 v3, 16256
    mul-float/2addr v2, v3
    int-to-float v1, v1
    div-float v1, v2, v1
  .line 160
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v2, v1, v1 }, Landroid/graphics/Matrix;->setScale(FF)V
  .line 162
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v1, v2 }, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
  :L0
  .line 166
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 167
    return-void
.end method

.method private paintStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
  .registers 9
  .prologue
  .line 236
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 237
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
    if-eqz v0, :L0
  .line 238
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->mBitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  :L0
  .line 240
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
    add-int/lit8 v0, v0, 90
    int-to-float v2, v0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->endAngle:I
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
    sub-int/2addr v0, v1
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->progress:I
    mul-int/2addr v0, v1
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
    div-int/2addr v0, v1
    int-to-float v3, v0
    const/4 v4, 0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    move-object v1, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 241
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  .line 242
    return-void
.end method

.method public getCricleColor()I
  .registers 2
  .prologue
  .line 300
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundColor:I
    return v0
.end method

.method public getCricleProgressColor()I
  .registers 2
  .prologue
  .line 308
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundProgressColor:I
    return v0
.end method

.method public declared-synchronized getMax()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
  .prologue
  .line 255
    monitor-enter p0
  :L0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
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
  .line 276
    monitor-enter p0
  :L0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->progress:I
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
  .line 80
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
    return v0
.end method

.method public getRoundWidth()F
  .registers 2
  .prologue
  .line 332
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundWidth:F
    return v0
.end method

.method public getTextColor()I
  .registers 2
  .prologue
  .line 316
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textColor:I
    return v0
.end method

.method public getTextSize()F
  .registers 2
  .prologue
  .line 324
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textSize:F
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 9
  .prologue
    const/4 v6, 1
    const/high16 v5, 16384
  .line 172
    invoke-super { p0, p1 }, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
  .line 177
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->getWidth()I
    move-result v0
    div-int/lit8 v0, v0, 2
  .line 178
    int-to-float v1, v0
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundWidth:F
    div-float/2addr v2, v5
    sub-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
  .line 179
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundColor:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 180
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 181
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundWidth:F
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 182
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    invoke-virtual { v1, v6 }, Landroid/graphics/Paint;->setAntiAlias(Z)V
  .line 183
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 185
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->backgroundColor:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 186
    int-to-float v1, v0
    int-to-float v2, v0
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
    int-to-float v3, v3
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    invoke-virtual { p1, v1, v2, v3, v4 }, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
  .line 189
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
  .line 194
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 195
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textColor:I
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 196
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textSize:F
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 197
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 198
    iget v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->progress:I
    int-to-float v1, v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
    int-to-float v2, v2
    div-float/2addr v1, v2
    const/high16 v2, 17096
    mul-float/2addr v1, v2
    float-to-int v1, v1
  .line 199
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, "%"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    move-result v2
  .line 201
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    const/4 v4, 0
    invoke-virtual { v3, v4 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  .line 202
    iget-boolean v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textIsDisplayable:Z
    if-eqz v3, :L0
    if-eqz v1, :L0
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->style:I
    if-nez v3, :L0
  .line 204
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
    div-float/2addr v2, v5
    sub-float v2, v3, v2
    int-to-float v3, v0
    iget v4, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textSize:F
    div-float/2addr v4, v5
    add-float/2addr v3, v4
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    invoke-virtual { p1, v1, v2, v3, v4 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  :L0
  .line 212
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundWidth:F
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 214
    new-instance v1, Landroid/graphics/RectF;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
    sub-int v2, v0, v2
    int-to-float v2, v2
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
    sub-int v3, v0, v3
    int-to-float v3, v3
    iget v4, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
    add-int/2addr v4, v0
    int-to-float v4, v4
    iget v5, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->radius:I
    add-int/2addr v0, v5
    int-to-float v0, v0
    invoke-direct { v1, v2, v3, v4, v0 }, Landroid/graphics/RectF;-><init>(FFFF)V
  .line 215
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundColor:I
    invoke-virtual { v0, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 216
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
    add-int/lit8 v0, v0, 90
    int-to-float v2, v0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->endAngle:I
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
    sub-int/2addr v0, v3
    int-to-float v3, v0
    const/4 v4, 0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 218
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundProgressColor:I
    invoke-virtual { v0, v2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 220
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->style:I
    packed-switch v0, :L4
  :L1
  .line 233
    return-void
  :L2
  .line 222
    invoke-direct { p0, p1, v1 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paintStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    goto :L1
  :L3
  .line 225
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 226
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->progress:I
    if-eqz v0, :L1
  .line 227
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
    add-int/lit8 v0, v0, 90
    int-to-float v2, v0
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->endAngle:I
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->startAngle:I
    sub-int/2addr v0, v3
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->progress:I
    mul-int/2addr v0, v3
    iget v3, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
    div-int/2addr v0, v3
    int-to-float v3, v0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;
    move-object v0, p1
    move v4, v6
    invoke-virtual/range { v0 .. v5 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    goto :L1
  .line 220
  :L4
  .packed-switch 0
    :L2
    :L3
  .end packed-switch
.end method

.method public setBackgroundColor(I)V
  .registers 2
  .prologue
  .line 245
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->backgroundColor:I
  .line 246
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->postInvalidate()V
  .line 247
    return-void
.end method

.method public setCricleColor(I)V
  .registers 2
  .prologue
  .line 304
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundColor:I
  .line 305
    return-void
.end method

.method public setCricleProgressColor(I)V
  .registers 2
  .prologue
  .line 312
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundProgressColor:I
  .line 313
    return-void
.end method

.method public declared-synchronized setMax(I)V
  .catchall { :L0 .. :L1 } :L1
  .catchall { :L2 .. :L3 } :L1
  .registers 4
  .prologue
  .line 264
    monitor-enter p0
    if-gez p1, :L2
  :L0
  .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "max not less than 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 264
    move-exception v0
    monitor-exit p0
    throw v0
  :L2
  .line 267
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
  :L3
  .line 268
    monitor-exit p0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
  .catchall { :L0 .. :L1 } :L1
  .catchall { :L2 .. :L4 } :L1
  .registers 4
  .prologue
  .line 286
    monitor-enter p0
    if-gez p1, :L2
  :L0
  .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "progress not less than 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 286
    move-exception v0
    monitor-exit p0
    throw v0
  :L2
  .line 289
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
    if-le p1, v0, :L3
  .line 290
    iget p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
  :L3
  .line 292
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->max:I
    if-gt p1, v0, :L4
  .line 293
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->progress:I
  .line 294
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->postInvalidate()V
  :L4
  .line 297
    monitor-exit p0
    return-void
.end method

.method public setRoundColor(I)V
  .registers 2
  .prologue
  .line 250
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundColor:I
  .line 251
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->postInvalidate()V
  .line 252
    return-void
.end method

.method public setRoundWidth(F)V
  .registers 2
  .prologue
  .line 336
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->roundWidth:F
  .line 337
    return-void
.end method

.method public setTextColor(I)V
  .registers 2
  .prologue
  .line 320
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textColor:I
  .line 321
    return-void
.end method

.method public setTextSize(F)V
  .registers 2
  .prologue
  .line 328
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->textSize:F
  .line 329
    return-void
.end method
