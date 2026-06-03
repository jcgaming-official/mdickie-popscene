.class public Lcom/distriqt/extension/core/CoreContext;
.super Lcom/adobe/fre/FREContext;
.source "CoreContext.java"


# static fields
.field public static IMPLEMENTATION:Ljava/lang/String; = "Android"

.field public static VERSION:Ljava/lang/String; = "2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    const-string v1, "isSupported"

    .line 45
    new-instance v2, Lcom/distriqt/extension/core/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/core/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 46
    new-instance v2, Lcom/distriqt/extension/core/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/core/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "implementation"

    .line 47
    new-instance v2, Lcom/distriqt/extension/core/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/core/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
