.class public Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  }
.end annotation

.field private _self:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;

.field private cacelButtonText:Ljava/lang/String;

.field private confirmButtonText:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private showCloseButton:Z

.field private showProtocol:Z

.field private subTitle:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private title:Ljava/lang/String;

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V
  .registers 11
  .prologue
  .line 43
    sget v0, Lcom/alipay/zoloz/toyger/R$style;->toyger_general_dialog_style:I
    invoke-direct { p0, p1, v0 }, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
  .line 44
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->context:Landroid/content/Context;
  .line 45
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->title:Ljava/lang/String;
  .line 46
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->subTitle:Ljava/lang/String;
  .line 47
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->confirmButtonText:Ljava/lang/String;
  .line 48
    iput-object p6, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->cacelButtonText:Ljava/lang/String;
  .line 49
    iput-boolean p8, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->showCloseButton:Z
  .line 50
    iput-boolean p9, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->showProtocol:Z
  .line 51
    iput-object p7, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;
  .line 52
    iput-object p5, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;
  .line 53
    iput-object p0, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->_self:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
  .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
  .registers 2
  .prologue
  .line 26
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->_self:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)Landroid/content/DialogInterface$OnClickListener;
  .registers 2
  .prologue
  .line 26
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;
    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)Landroid/content/DialogInterface$OnClickListener;
  .registers 2
  .prologue
  .line 26
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;
    return-object v0
.end method

.method private initViews()V
  .registers 11
  .prologue
    const/4 v8, 0
    const/16 v7, 8
  .line 64
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->context:Landroid/content/Context;
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
  .line 65
    sget v1, Lcom/alipay/zoloz/toyger/R$layout;->toyger_general_dialog:I
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
  .line 66
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->setContentView(Landroid/view/View;)V
  .line 67
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->toyger_general_dialog_content_title:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
  .line 68
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->title:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 69
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->toyger_general_dialog_content_sub_title:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
  .line 70
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->subTitle:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 71
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->toyger_general_dialog_btn_confirm:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/Button;
  .line 72
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->confirmButtonText:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 73
    sget v1, Lcom/alipay/zoloz/toyger/R$id;->toyger_general_dialog_btn_cancel:I
    invoke-virtual { p0, v1 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/Button;
  .line 74
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->cacelButtonText:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 75
    sget v2, Lcom/alipay/zoloz/toyger/R$id;->btn_x:I
    invoke-virtual { p0, v2 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/ImageButton;
  .line 76
    sget v3, Lcom/alipay/zoloz/toyger/R$id;->toyger_general_dialog_protocol:I
    invoke-virtual { p0, v3 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Landroid/widget/LinearLayout;
  .line 77
    sget v4, Lcom/alipay/zoloz/toyger/R$id;->protocol:I
    invoke-virtual { p0, v4 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v4
    check-cast v4, Landroid/widget/TextView;
  .line 79
    sget v5, Lcom/alipay/zoloz/toyger/R$id;->toyger_general_dialog_btn_cancel_center:I
    invoke-virtual { p0, v5 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->findViewById(I)Landroid/view/View;
    move-result-object v5
  .line 82
    new-instance v6, Lcom/alipay/zoloz/toyger/widget/c;
    invoke-direct { v6, p0 }, Lcom/alipay/zoloz/toyger/widget/c;-><init>(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)V
    invoke-virtual { v4, v6 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 97
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->confirmButtonText:Ljava/lang/String;
    invoke-static { v4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :L4
  .line 98
    invoke-virtual { v0, v7 }, Landroid/widget/Button;->setVisibility(I)V
  .line 99
    invoke-virtual { v5, v7 }, Landroid/view/View;->setVisibility(I)V
  :L0
  .line 104
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->cacelButtonText:Ljava/lang/String;
    invoke-static { v4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :L5
  .line 105
    invoke-virtual { v1, v7 }, Landroid/widget/Button;->setVisibility(I)V
  .line 106
    invoke-virtual { v5, v7 }, Landroid/view/View;->setVisibility(I)V
  :L1
  .line 111
    iget-boolean v4, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->showProtocol:Z
    if-nez v4, :L2
  .line 112
    const/4 v4, 4
    invoke-virtual { v3, v4 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  :L2
  .line 114
    iget-boolean v3, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->showCloseButton:Z
    if-nez v3, :L3
  .line 115
    invoke-virtual { v2, v7 }, Landroid/widget/ImageButton;->setVisibility(I)V
  :L3
  .line 117
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->getWindow()Landroid/view/Window;
    move-result-object v3
  .line 118
    invoke-virtual { v3 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v4
  .line 119
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->context:Landroid/content/Context;
    invoke-virtual { v5 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v5
    invoke-virtual { v5 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v5
  .line 120
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I
    int-to-double v6, v5
    const-wide v8, 4606281698874543309L
    mul-double/2addr v6, v8
    double-to-int v5, v6
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I
  .line 121
    invoke-virtual { v3, v4 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  .line 122
    new-instance v3, Lcom/alipay/zoloz/toyger/widget/d;
    invoke-direct { v3, p0 }, Lcom/alipay/zoloz/toyger/widget/d;-><init>(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)V
    invoke-virtual { v0, v3 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 131
    new-instance v0, Lcom/alipay/zoloz/toyger/widget/e;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/toyger/widget/e;-><init>(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)V
    invoke-virtual { v1, v0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 141
    new-instance v0, Lcom/alipay/zoloz/toyger/widget/f;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/toyger/widget/f;-><init>(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)V
    invoke-virtual { v2, v0 }, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 150
    return-void
  :L4
  .line 101
    invoke-virtual { v0, v8 }, Landroid/widget/Button;->setVisibility(I)V
    goto :L0
  :L5
  .line 108
    invoke-virtual { v1, v8 }, Landroid/widget/Button;->setVisibility(I)V
    goto :L1
.end method

.method public onCreate(Landroid/os/Bundle;)V
  .registers 2
  .prologue
  .line 58
    invoke-super { p0, p1 }, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
  .line 59
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->initViews()V
  .line 60
    return-void
.end method

.method public setTag(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;)V
  .registers 2
  .prologue
  .line 153
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->tag:Ljava/lang/Object;
  .line 154
    return-void
.end method
