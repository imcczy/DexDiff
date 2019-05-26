.class public interface abstract annotation Lcom/alipay/zoloz/mobile/framework/service/annotation/OperationType;
.super Ljava/lang/Object;
.implements Ljava/lang/annotation/Annotation;
.source "SourceFile"

.annotation runtime Ljava/lang/annotation/Retention;
  value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation
.annotation runtime Ljava/lang/annotation/Target;
  value = {
    .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
  }
.end annotation

.method public abstract value()Ljava/lang/String;
.end method
