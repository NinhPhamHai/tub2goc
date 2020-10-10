.class Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$2;
.super Ljava/lang/Object;
.source "PreferencesMediaLibrary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->confirmUpdatePreferences(Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;Landroid/widget/CheckBox;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$2;->this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 268
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
