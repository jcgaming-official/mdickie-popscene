.class Lcom/adobe/air/AndroidWebView$3;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;->destroyInternals()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebViewAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync;->destroyInternals()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidWebView;->access$002(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync;

    .line 111
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidWebView;->access$102(Lcom/adobe/air/AndroidWebView;Z)Z

    return-void
.end method
