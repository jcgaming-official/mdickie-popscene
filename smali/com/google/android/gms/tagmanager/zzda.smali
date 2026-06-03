.class final Lcom/google/android/gms/tagmanager/zzda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field private final zza:Landroid/util/LruCache;


# direct methods
.method constructor <init>(ILcom/google/android/gms/tagmanager/zzq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzcz;

    const/high16 v0, 0x100000

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/tagmanager/zzcz;-><init>(Lcom/google/android/gms/tagmanager/zzda;ILcom/google/android/gms/tagmanager/zzq;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzda;->zza:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzda;->zza:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzda;->zza:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
