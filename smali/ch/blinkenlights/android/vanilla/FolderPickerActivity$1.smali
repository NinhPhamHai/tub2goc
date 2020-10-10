.class Lch/blinkenlights/android/vanilla/FolderPickerActivity$1;
.super Ljava/lang/Object;
.source "FolderPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/FolderPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$1;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 94
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$1;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->getCurrentDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$1;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    .line 95
    invoke-static {v1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->getIncludedDirs()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$1;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    .line 96
    invoke-static {v2}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->getExcludedDirs()Ljava/util/ArrayList;

    move-result-object v2

    .line 94
    invoke-virtual {p1, v0, v1, v2}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->onFolderPicked(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
