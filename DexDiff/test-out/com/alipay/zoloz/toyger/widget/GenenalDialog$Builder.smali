.class public Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "Builder"
.end annotation

.field private _cacelButtonText:Ljava/lang/String;

.field private _confirmButtonText:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field _negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field _positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private _showCloseButton:Z

.field private _showProtocol:Z

.field private _subTitle:Ljava/lang/String;

.field private _title:Ljava/lang/String;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .prologue
  .line 171
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 172
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_context:Landroid/content/Context;
  .line 173
    return-void
.end method

.method public setMessage(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .registers 2
  .prologue
  .line 181
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_subTitle:Ljava/lang/String;
  .line 182
    return-object p0
.end method

.method public setMessage2(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .registers 2
  .prologue
  .line 186
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_subTitle:Ljava/lang/String;
  .line 187
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .registers 3
  .prologue
  .line 209
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_cacelButtonText:Ljava/lang/String;
  .line 210
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_negativeListener:Landroid/content/DialogInterface$OnClickListener;
  .line 211
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .registers 3
  .prologue
  .line 192
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_confirmButtonText:Ljava/lang/String;
  .line 193
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_positiveListener:Landroid/content/DialogInterface$OnClickListener;
  .line 194
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .registers 2
  .prologue
  .line 176
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_title:Ljava/lang/String;
  .line 177
    return-object p0
.end method

.method public show()Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 11
  .prologue
  .line 216
    new-instance v0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_context:Landroid/content/Context;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_title:Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_subTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_confirmButtonText:Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_positiveListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_cacelButtonText:Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_negativeListener:Landroid/content/DialogInterface$OnClickListener;
    iget-boolean v8, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_showCloseButton:Z
    iget-boolean v9, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_showProtocol:Z
    invoke-direct/range { v0 .. v9 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V
  :L0
  .line 219
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->show()V
  :L1
  .line 223
    return-object v0
  :L2
  .line 220
    move-exception v1
    goto :L1
.end method

.method public showCloseButton(Z)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .registers 2
  .prologue
  .line 204
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_showCloseButton:Z
  .line 205
    return-object p0
.end method

.method public showProtocol(Z)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .registers 2
  .prologue
  .line 199
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->_showProtocol:Z
  .line 200
    return-object p0
.end method
