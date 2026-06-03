.class public Lcom/distriqt/extension/play/utils/Errors;
.super Ljava/lang/Object;
.source "Errors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/distriqt/extension/play/playExtension;->context:Lcom/distriqt/extension/play/playContext;

    invoke-static {v0, p0}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    return-void
.end method
