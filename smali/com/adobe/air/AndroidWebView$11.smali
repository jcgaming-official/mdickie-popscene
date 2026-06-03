.class Lcom/adobe/air/AndroidWebView$11;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;->setVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$11;->this$0:Lcom/adobe/air/AndroidWebView;

    iput-boolean p2, p0, Lcom/adobe/air/AndroidWebView$11;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$11;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$11;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebViewAsync;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adobe/air/AndroidWebView$11;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebViewAsync;->setVisibility(Z)V

    :cond_0
    return-void
.end method
