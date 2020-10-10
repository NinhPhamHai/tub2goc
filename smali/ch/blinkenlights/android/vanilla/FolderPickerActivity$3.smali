.class Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;
.super Ljava/lang/Object;
.source "FolderPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/FolderPickerActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/FolderPickerActivity;Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 231
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->getIncludedDirs()Ljava/util/ArrayList;

    move-result-object p1

    .line 232
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->getExcludedDirs()Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_1
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->val$path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-static {p2}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->setIncludedDirs(Ljava/util/ArrayList;)V

    .line 245
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->setExcludedDirs(Ljava/util/ArrayList;)V

    return-void
.end method
