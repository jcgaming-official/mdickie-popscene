.class public Lcom/distriqt/extension/playservices/base/ProviderInstallerContext;
.super Lcom/adobe/fre/FREContext;
.source "ProviderInstallerContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "installIfNeeded"

    .line 49
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
