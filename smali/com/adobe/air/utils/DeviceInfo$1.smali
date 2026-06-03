.class Lcom/adobe/air/utils/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/utils/DeviceInfo;->getTotalMemory()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x2

    .line 42
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system/bin/cat"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/proc/meminfo"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 44
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v1, 0x400

    .line 46
    new-array v5, v1, [B

    .line 47
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v5, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 52
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v3, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "MemTotal"

    .line 53
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v3, 0x3a

    .line 56
    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v1, v4

    const/16 v3, 0xa

    .line 59
    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v6, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 64
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
