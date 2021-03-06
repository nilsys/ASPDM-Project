import 'package:aspdm_project/domain/entities/user.dart';
import 'package:aspdm_project/domain/values/unique_id.dart';
import 'package:aspdm_project/domain/values/user_values.dart';
import 'package:aspdm_project/presentation/widgets/members_picker_item_widget.dart';
import 'package:aspdm_project/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("MembersPickerItemWidget tests", () {
    User member;

    setUpAll(() {
      member = User(
        UniqueId.empty(),
        UserName("User Name"),
        EmailAddress("user@email.com"),
        Colors.red,
      );
    });

    testWidgets("create one item", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MembersPickerItemWidget(
              member: member,
            ),
          ),
        ),
      );

      expect(find.text("User Name"), findsOneWidget);
      expect(find.text("user@email.com"), findsOneWidget);
      expect(find.byType(UserAvatar), findsOneWidget);
      expect(find.byIcon(FeatherIcons.check), findsNothing);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MembersPickerItemWidget(
              member: member,
              selected: true,
            ),
          ),
        ),
      );

      expect(find.text("User Name"), findsOneWidget);
      expect(find.text("user@email.com"), findsOneWidget);
      expect(find.byType(UserAvatar), findsOneWidget);
      expect(find.byIcon(FeatherIcons.check), findsOneWidget);
    });

    testWidgets("tap on the item calls on selected", (tester) async {
      bool selected = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: StatefulBuilder(
              builder: (context, setState) => MembersPickerItemWidget(
                member: member,
                selected: selected,
                onSelected: (value) => setState(() => selected = value),
              ),
            ),
          ),
        ),
      );

      expect(find.text("User Name"), findsOneWidget);
      expect(find.text("user@email.com"), findsOneWidget);
      expect(find.byType(UserAvatar), findsOneWidget);
      expect(find.byIcon(FeatherIcons.check), findsNothing);

      await tester.tap(find.text("User Name"));
      await tester.pumpAndSettle();

      expect(find.text("User Name"), findsOneWidget);
      expect(find.text("user@email.com"), findsOneWidget);
      expect(find.byType(UserAvatar), findsOneWidget);
      expect(find.byIcon(FeatherIcons.check), findsOneWidget);
    });

    test("creating with missing parameters throws an error", () {
      try {
        MembersPickerItemWidget();
        fail("This should throw an exception!");
      } catch (e) {
        expect(e, isA<AssertionError>());
      }

      try {
        MembersPickerItemWidget(
          member: member,
          selected: null,
        );
        fail("This should throw an exception!");
      } catch (e) {
        expect(e, isA<AssertionError>());
      }
    });
  });
}
