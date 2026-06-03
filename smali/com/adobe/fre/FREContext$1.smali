.class Lcom/adobe/fre/FREContext$1;
.super Ljava/lang/Object;
.source "FREContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/fre/FREContext;->callFunctionInMainThread(Lcom/adobe/fre/FREFunction;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/fre/FREContext;

.field final synthetic val$args:[Lcom/adobe/fre/FREObject;

.field final synthetic val$ctx:Lcom/adobe/fre/FREContext;

.field final synthetic val$fnc:Lcom/adobe/fre/FREFunction;

.field final synthetic val$retVal:[Lcom/adobe/fre/FREObject;

.field final synthetic val$sem2:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;Lcom/adobe/fre/FREFunction;Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/adobe/fre/FREContext$1;->this$0:Lcom/adobe/fre/FREContext;

    iput-object p2, p0, Lcom/adobe/fre/FREContext$1;->val$retVal:[Lcom/adobe/fre/FREObject;

    iput-object p3, p0, Lcom/adobe/fre/FREContext$1;->val$fnc:Lcom/adobe/fre/FREFunction;

    iput-object p4, p0, Lcom/adobe/fre/FREContext$1;->val$ctx:Lcom/adobe/fre/FREContext;

    iput-object p5, p0, Lcom/adobe/fre/FREContext$1;->val$args:[Lcom/adobe/fre/FREObject;

    iput-object p6, p0, Lcom/adobe/fre/FREContext$1;->val$sem2:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/adobe/fre/FREContext$1;->val$retVal:[Lcom/adobe/fre/FREObject;

    iget-object v1, p0, Lcom/adobe/fre/FREContext$1;->val$fnc:Lcom/adobe/fre/FREFunction;

    iget-object v2, p0, Lcom/adobe/fre/FREContext$1;->val$ctx:Lcom/adobe/fre/FREContext;

    iget-object v3, p0, Lcom/adobe/fre/FREContext$1;->val$args:[Lcom/adobe/fre/FREObject;

    invoke-interface {v1, v2, v3}, Lcom/adobe/fre/FREFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 185
    iget-object v0, p0, Lcom/adobe/fre/FREContext$1;->val$sem2:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
