.class Lcom/adobe/air/AndroidStageText$35;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->captureSnapshot(II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;

.field final synthetic val$arrBitmap:[Landroid/graphics/Bitmap;

.field final synthetic val$height:I

.field final synthetic val$tmpRef:Lcom/adobe/air/AndroidStageTextAsync;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;[Landroid/graphics/Bitmap;Lcom/adobe/air/AndroidStageTextAsync;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$35;->this$0:Lcom/adobe/air/AndroidStageText;

    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$35;->val$arrBitmap:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/adobe/air/AndroidStageText$35;->val$tmpRef:Lcom/adobe/air/AndroidStageTextAsync;

    iput p4, p0, Lcom/adobe/air/AndroidStageText$35;->val$width:I

    iput p5, p0, Lcom/adobe/air/AndroidStageText$35;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 588
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$35;->val$arrBitmap:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$35;->val$tmpRef:Lcom/adobe/air/AndroidStageTextAsync;

    iget v2, p0, Lcom/adobe/air/AndroidStageText$35;->val$width:I

    iget v3, p0, Lcom/adobe/air/AndroidStageText$35;->val$height:I

    invoke-virtual {v1, v2, v3}, Lcom/adobe/air/AndroidStageTextAsync;->captureSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 589
    monitor-enter p0

    .line 591
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 592
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
