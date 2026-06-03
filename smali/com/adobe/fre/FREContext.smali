.class public abstract Lcom/adobe/fre/FREContext;
.super Ljava/lang/Object;
.source "FREContext.java"


# instance fields
.field private m_objectPointer:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native registerFunction(JLjava/lang/String;Lcom/adobe/fre/FREFunction;)V
.end method

.method private native registerFunctionCount(JI)V
.end method


# virtual methods
.method protected VisitFunctions(J)V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getFunctions()Ljava/util/Map;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/adobe/fre/FREContext;->registerFunctionCount(JI)V

    .line 138
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/fre/FREFunction;

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/adobe/fre/FREContext;->registerFunction(JLjava/lang/String;Lcom/adobe/fre/FREFunction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callFunctionInMainThread(Lcom/adobe/fre/FREFunction;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11

    const/4 v0, 0x1

    .line 168
    new-array v8, v0, [Lcom/adobe/fre/FREObject;

    const/4 v9, 0x0

    .line 170
    :try_start_0
    new-instance v10, Ljava/util/concurrent/Semaphore;

    invoke-direct {v10, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 171
    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    array-length v1, p2

    new-array v6, v1, [Lcom/adobe/fre/FREObject;

    const/4 v1, 0x0

    .line 179
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 180
    aget-object v2, p2, v1

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    new-instance p2, Lcom/adobe/fre/FREContext$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v5, p0

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/adobe/fre/FREContext$1;-><init>(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;Lcom/adobe/fre/FREFunction;Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :catch_0
    :try_start_2
    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 193
    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :catch_1
    aget-object p1, v8, v9

    return-object p1
.end method

.method public native dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public native getActionScriptData()Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getActivity()Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getFunctions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation
.end method

.method public native getResourceId(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getSurfaceFromVideoTexture(Lcom/adobe/fre/FREObject;)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setActionScriptData(Lcom/adobe/fre/FREObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoTextureDimensions(Lcom/adobe/fre/FREObject;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
