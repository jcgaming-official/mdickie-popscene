.class final Lcom/google/android/gms/tagmanager/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/tagmanager/zzcb;

.field final synthetic zzd:Lcom/google/android/gms/tagmanager/zzcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcb;Lcom/google/android/gms/tagmanager/zzcb;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzca;->zzc:Lcom/google/android/gms/tagmanager/zzcb;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzca;->zzd:Lcom/google/android/gms/tagmanager/zzcb;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzca;->zza:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzca;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzc:Lcom/google/android/gms/tagmanager/zzcb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzc(Lcom/google/android/gms/tagmanager/zzcb;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzc:Lcom/google/android/gms/tagmanager/zzcb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzca;->zzd:Lcom/google/android/gms/tagmanager/zzcb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfe;->zzg()Lcom/google/android/gms/tagmanager/zzfe;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zza(Lcom/google/android/gms/tagmanager/zzcb;)Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzfe;->zzl(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcb;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzc:Lcom/google/android/gms/tagmanager/zzcb;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzfe;->zzf()Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzcb;->zzd(Lcom/google/android/gms/tagmanager/zzcb;Lcom/google/android/gms/tagmanager/zzcc;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzc:Lcom/google/android/gms/tagmanager/zzcb;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzca;->zza:J

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzca;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzc(Lcom/google/android/gms/tagmanager/zzcb;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcc;->zzb(JLjava/lang/String;)V

    return-void
.end method
