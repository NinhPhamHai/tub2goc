.class Lch/blinkenlights/android/vanilla/LibraryActivity$1;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/LibraryActivity;->updateCover(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

.field final synthetic val$cover:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$1;->this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$1;->val$cover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 546
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$1;->this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->access$000(Lch/blinkenlights/android/vanilla/LibraryActivity;)Lch/blinkenlights/android/vanilla/BottomBarControls;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$1;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->setCover(Landroid/graphics/Bitmap;)V

    return-void
.end method
