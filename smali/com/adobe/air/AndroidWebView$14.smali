.class Lcom/adobe/air/AndroidWebView$14;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;->adjustViewBounds(DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;

.field final synthetic val$height:D

.field final synthetic val$width:D

.field final synthetic val$x:D

.field final synthetic val$y:D


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$14;->this$0:Lcom/adobe/air/AndroidWebView;

    iput-wide p2, p0, Lcom/adobe/air/AndroidWebView$14;->val$x:D

    iput-wide p4, p0, Lcom/adobe/air/AndroidWebView$14;->val$y:D

    iput-wide p6, p0, Lcom/adobe/air/AndroidWebView$14;->val$width:D

    iput-wide p8, p0, Lcom/adobe/air/AndroidWebView$14;->val$height:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 247
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$14;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$14;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebViewAsync;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/air/AndroidWebView$14;->val$x:D

    iget-wide v4, p0, Lcom/adobe/air/AndroidWebView$14;->val$y:D

    iget-wide v6, p0, Lcom/adobe/air/AndroidWebView$14;->val$width:D

    iget-wide v8, p0, Lcom/adobe/air/AndroidWebView$14;->val$height:D

    invoke-virtual/range {v1 .. v9}, Lcom/adobe/air/AndroidWebViewAsync;->adjustViewBounds(DDDD)V

    :cond_0
    return-void
.end method
