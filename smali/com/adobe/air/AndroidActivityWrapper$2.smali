.class Lcom/adobe/air/AndroidActivityWrapper$2;
.super Ljava/lang/Object;
.source "AndroidActivityWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidActivityWrapper;->planeKickCascade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 684
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeCleanCascade()V

    .line 685
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v0}, Lcom/adobe/air/AndroidActivityWrapper;->access$100(Lcom/adobe/air/AndroidActivityWrapper;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v0}, Lcom/adobe/air/AndroidActivityWrapper;->access$200(Lcom/adobe/air/AndroidActivityWrapper;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 690
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v2}, Lcom/adobe/air/AndroidActivityWrapper;->access$300(Lcom/adobe/air/AndroidActivityWrapper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v2}, Lcom/adobe/air/AndroidActivityWrapper;->access$100(Lcom/adobe/air/AndroidActivityWrapper;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v3}, Lcom/adobe/air/AndroidActivityWrapper;->access$300(Lcom/adobe/air/AndroidActivityWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 692
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v2}, Lcom/adobe/air/AndroidActivityWrapper;->access$100(Lcom/adobe/air/AndroidActivityWrapper;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v3}, Lcom/adobe/air/AndroidActivityWrapper;->access$300(Lcom/adobe/air/AndroidActivityWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->access$202(Lcom/adobe/air/AndroidActivityWrapper;Z)Z

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 698
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v3}, Lcom/adobe/air/AndroidActivityWrapper;->access$300(Lcom/adobe/air/AndroidActivityWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 699
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v4}, Lcom/adobe/air/AndroidActivityWrapper;->access$300(Lcom/adobe/air/AndroidActivityWrapper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    invoke-static {v3, v4}, Lcom/adobe/air/AndroidActivityWrapper;->access$400(Lcom/adobe/air/AndroidActivityWrapper;Landroid/view/SurfaceView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 700
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->access$202(Lcom/adobe/air/AndroidActivityWrapper;Z)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 705
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->access$502(Lcom/adobe/air/AndroidActivityWrapper;I)I

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v0}, Lcom/adobe/air/AndroidActivityWrapper;->access$500(Lcom/adobe/air/AndroidActivityWrapper;)I

    move-result v0

    if-nez v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 712
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper$2;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {v0}, Lcom/adobe/air/AndroidActivityWrapper;->access$600(Lcom/adobe/air/AndroidActivityWrapper;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    :cond_6
    return-void
.end method
