.class public final Lcom/google/android/gms/internal/ads/zzctc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzcta;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfcv:Lcom/google/android/gms/internal/ads/zzdxp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Lcom/google/android/gms/internal/ads/zzdhd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzggf:Lcom/google/android/gms/internal/ads/zzdxp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdxp;Lcom/google/android/gms/internal/ads/zzdxp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Lcom/google/android/gms/internal/ads/zzdhd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzfcv:Lcom/google/android/gms/internal/ads/zzdxp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzggf:Lcom/google/android/gms/internal/ads/zzdxp;

    return-void
.end method

.method public static zzas(Lcom/google/android/gms/internal/ads/zzdxp;Lcom/google/android/gms/internal/ads/zzdxp;)Lcom/google/android/gms/internal/ads/zzctc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Lcom/google/android/gms/internal/ads/zzdhd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzctc;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzctc;-><init>(Lcom/google/android/gms/internal/ads/zzdxp;Lcom/google/android/gms/internal/ads/zzdxp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzfcv:Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdxp;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdhd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzggf:Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdxp;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcta;-><init>(Lcom/google/android/gms/internal/ads/zzdhd;Landroid/os/Bundle;)V

    return-object v0
.end method
