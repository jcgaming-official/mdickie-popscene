.class public Lcom/distriqt/extension/playservices/base/PlayServicesBaseContext;
.super Lcom/adobe/fre/FREContext;
.source "PlayServicesBaseContext.java"


# instance fields
.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/distriqt/extension/playservices/base/PlayServicesBaseContext;->v:Z

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

    const-string v1, "isSupported"

    .line 45
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 46
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "implementation"

    .line 47
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
