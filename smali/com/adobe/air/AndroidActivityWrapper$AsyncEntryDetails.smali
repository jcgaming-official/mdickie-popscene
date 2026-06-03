.class public final Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;
.super Ljava/lang/Object;
.source "AndroidActivityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidActivityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncEntryDetails"
.end annotation


# instance fields
.field public _args:Ljava/lang/Object;

.field public _h:Lcom/adobe/air/Entrypoints$AsyncEntryHandler;

.field public _m:Ljava/lang/reflect/Method;

.field public _mutex:Ljava/lang/Object;

.field public _result:Z


# direct methods
.method public constructor <init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 3079
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3082
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_h:Lcom/adobe/air/Entrypoints$AsyncEntryHandler;

    .line 3083
    iput-object p2, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_m:Ljava/lang/reflect/Method;

    .line 3084
    iput-object p3, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_args:Ljava/lang/Object;

    .line 3085
    iput-object p4, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_mutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 3093
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_h:Lcom/adobe/air/Entrypoints$AsyncEntryHandler;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_m:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_args:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adobe/air/Entrypoints$AsyncEntryHandler;->wrapperInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_result:Z

    .line 3094
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_mutex:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method public getResult()Z
    .locals 1

    .line 3097
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_mutex:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3099
    :catch_0
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->_result:Z

    return v0
.end method
