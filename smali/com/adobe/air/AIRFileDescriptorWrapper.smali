.class public Lcom/adobe/air/AIRFileDescriptorWrapper;
.super Ljava/lang/Object;
.source "AIRFileDescriptorWrapper.java"


# instance fields
.field private m_debug:Z

.field private m_fd:Landroid/os/ParcelFileDescriptor;

.field private m_in:Ljava/io/FileInputStream;

.field private m_lastError:I

.field private m_mode:Ljava/lang/String;

.field private m_out:Ljava/io/FileOutputStream;

.field private m_position:J

.field private m_uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/adobe/air/AIRFileUtils;->isDebugging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_debug:Z

    .line 39
    iput-object p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_fd:Landroid/os/ParcelFileDescriptor;

    .line 40
    iput-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_uri:Landroid/net/Uri;

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 44
    iget-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    const/16 p3, 0x77

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const-wide/16 v0, 0x0

    if-ltz p2, :cond_2

    .line 46
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    .line 47
    iget-boolean p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_debug:Z

    if-eqz p2, :cond_0

    const-string p2, "AdobeAIR"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating file output stream, mode is "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    const-string p3, "wt"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    const-string p3, "rw"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "AdobeAIR"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error initialising file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x7ee

    .line 54
    iput p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 58
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    const/16 p3, 0x72

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_3

    .line 60
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    .line 65
    :cond_3
    iput-wide v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    .line 66
    iget-object p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    const-string p3, "wa"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    :cond_4
    return-void
.end method


# virtual methods
.method Close()Z
    .locals 5

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "AdobeAIR"

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure when closing a file handle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xbbd

    .line 209
    iput v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    return v0
.end method

.method Delete()Z
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/adobe/air/AIRFileDescriptorWrapper;->Close()Z

    .line 217
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Flush()Z
    .locals 2

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0x7ee

    .line 146
    iput v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 148
    :goto_0
    iget v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method Gets(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 119
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-ge v2, p1, :cond_0

    move p1, v2

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_3

    .line 125
    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-ltz v2, :cond_3

    .line 127
    iget-wide v3, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    const/16 v3, 0x80

    if-lt v2, v3, :cond_1

    const-string v3, "AdobeAIR"

    const-string v4, "\'gets\' called on non-ascii input file"

    .line 128
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v3, v2, 0x7f

    int-to-char v3, v3

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "AdobeAIR"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get string from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7ee

    .line 136
    iput p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    const/4 p1, 0x0

    return-object p1
.end method

.method LastError()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    return v0
.end method

.method Read([B)J
    .locals 8

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 74
    array-length v1, p1

    int-to-long v1, v1

    const-wide/16 v3, -0x1

    .line 78
    :try_start_0
    iget-object v5, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    move-wide v1, v5

    .line 82
    :cond_0
    iget-object v5, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    long-to-int v1, v1

    invoke-virtual {v5, p1, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    int-to-long v3, p1

    .line 83
    iget-wide v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    const/4 p1, 0x0

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AdobeAIR"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in reading file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7ee

    .line 87
    iput p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    :goto_0
    return-wide v3
.end method

.method Seek(JI)J
    .locals 5

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 173
    iget-boolean v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AdobeAIR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: file position mismatch in output: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 175
    iget-boolean v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_debug:Z

    if-eqz v0, :cond_1

    const-string v0, "AdobeAIR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: file position mismatch in input: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    goto :goto_0

    .line 184
    :pswitch_1
    iput-wide p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    goto :goto_0

    .line 181
    :pswitch_2
    iget-wide v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    const/4 p3, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    .line 190
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-wide p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_in:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-wide p2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Seek failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7ee

    .line 194
    iput p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    const-wide/16 p1, -0x1

    .line 195
    iput-wide p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    .line 197
    :cond_3
    :goto_1
    iget-wide p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method Size()J
    .locals 2

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 153
    iget-object v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    return-wide v0
.end method

.method Truncate()Z
    .locals 4

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 160
    iput-wide v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0x7ee

    .line 162
    iput v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 164
    :goto_0
    iget v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method Write([B)Z
    .locals 5

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 95
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_mode:Ljava/lang/String;

    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0xbc0

    .line 97
    iput p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    return v0

    .line 102
    :cond_0
    :try_start_0
    iput v0, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    .line 103
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v0, 0x1

    .line 107
    iget-wide v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J

    array-length p1, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_position:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "AdobeAIR"

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed in writing data to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7ee

    .line 110
    iput p1, p0, Lcom/adobe/air/AIRFileDescriptorWrapper;->m_lastError:I

    :goto_0
    return v0
.end method
