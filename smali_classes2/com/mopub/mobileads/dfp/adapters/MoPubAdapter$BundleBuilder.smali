.class public final Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BundleBuilder"
.end annotation


# instance fields
.field private mPrivacyIconSizeDp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 3

    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 676
    iget v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;->mPrivacyIconSizeDp:I

    const-string v2, "privacy_icon_size_dp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setPrivacyIconSize(I)Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;
    .locals 0

    .line 665
    iput p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;->mPrivacyIconSizeDp:I

    return-object p0
.end method
