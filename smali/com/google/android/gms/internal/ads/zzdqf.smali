.class final Lcom/google/android/gms/internal/ads/zzdqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"


# instance fields
.field public zzhhq:I

.field public zzhhr:J

.field public zzhhs:Ljava/lang/Object;

.field public final zzhht:Lcom/google/android/gms/internal/ads/zzdrg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrg;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhht:Lcom/google/android/gms/internal/ads/zzdrg;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
