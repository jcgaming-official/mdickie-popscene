.class final Lcom/google/android/gms/tagmanager/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzav;

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbd;Lcom/google/android/gms/tagmanager/zzav;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaz;->zzb:Lcom/google/android/gms/tagmanager/zzbd;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzaz;->zza:Lcom/google/android/gms/tagmanager/zzav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaz;->zzb:Lcom/google/android/gms/tagmanager/zzbd;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzaz;->zza:Lcom/google/android/gms/tagmanager/zzav;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbd;->zzf(Lcom/google/android/gms/tagmanager/zzbd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzav;->zza(Ljava/util/List;)V

    return-void
.end method
