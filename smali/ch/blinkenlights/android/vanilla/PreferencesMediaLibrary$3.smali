.class Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;
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

    .line 259
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;->this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 261
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;->this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->access$102(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;Z)Z

    .line 262
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;->this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-static {p1, p2}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->access$200(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;Landroid/widget/CheckBox;)V

    return-void
.end method
