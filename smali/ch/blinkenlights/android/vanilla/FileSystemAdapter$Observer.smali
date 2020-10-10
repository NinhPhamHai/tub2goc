.class Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;
.super Landroid/os/FileObserver;
.source "FileSystemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/FileSystemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/FileSystemAdapter;Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    const/16 p1, 0x3c0

    .line 382
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 383
    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 390
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    iget-object p2, p1, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iget-object p2, p2, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->postRequestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    :cond_0
    return-void
.end method
