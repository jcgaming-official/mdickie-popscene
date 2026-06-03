.class public Lcom/adobe/air/CertificateEventData;
.super Ljava/lang/Object;
.source "CertificateEventData.java"


# instance fields
.field private m_condition:Ljava/util/concurrent/locks/Condition;

.field private m_lock:Ljava/util/concurrent/locks/Lock;

.field private m_message:Ljava/lang/String;

.field private m_nativeObject:J

.field private m_result:I


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/adobe/air/CertificateEventData;->m_result:I

    .line 37
    iput-object p3, p0, Lcom/adobe/air/CertificateEventData;->m_message:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Lcom/adobe/air/CertificateEventData;->m_nativeObject:J

    .line 39
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/CertificateEventData;->m_lock:Ljava/util/concurrent/locks/Lock;

    .line 40
    iget-object p1, p0, Lcom/adobe/air/CertificateEventData;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/CertificateEventData;->m_condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/adobe/air/CertificateEventData;->m_message:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeObject()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/adobe/air/CertificateEventData;->m_nativeObject:J

    return-wide v0
.end method

.method public setResult(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/adobe/air/CertificateEventData;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    iput p1, p0, Lcom/adobe/air/CertificateEventData;->m_result:I

    .line 56
    iget-object p1, p0, Lcom/adobe/air/CertificateEventData;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 57
    iget-object p1, p0, Lcom/adobe/air/CertificateEventData;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public waitForResult()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/adobe/air/CertificateEventData;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_0
    iget v0, p0, Lcom/adobe/air/CertificateEventData;->m_result:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adobe/air/CertificateEventData;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 72
    iget-object v1, p0, Lcom/adobe/air/CertificateEventData;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    throw v0

    .line 72
    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/CertificateEventData;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    iget v0, p0, Lcom/adobe/air/CertificateEventData;->m_result:I

    return v0
.end method
