#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 18)

\header {
    tagline = ##f
}

\layout {
    \context {
        \Score
        \remove Bar_number_engraver

        \override Beam.beam-thickness = 0.5
        \override Beam.breakable = ##t
        \override Beam.length-fraction = 1

        \override Glissando.breakable = ##t
        \override Glissando.thickness = 2

        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteCollision.merge-differently-headed = ##t

        \override NoteColumn.ignore-collision = ##t

        \override SpacingSpanner.uniform-stretching = ##t

        \override StaffSymbol.color = #(x11-color 'grey50)
        \override StaffSymbol.layer = -1

        \override TextScript.outside-staff-padding = 1

        \override TimeSignature.style = #'numbered

        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.breakable = ##t
        \override TupletBracket.minimum-length = 3
        \override TupletBracket.outside-staff-padding = 1.5
        \override TupletBracket.padding = 1.25
        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods

        %\override TupletNumber.text = #tuplet-number::calc-fraction-text

        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 8)
            (minimum-distance . 14)
            (padding . 4)
            (stretchability . 0)
            )

        tupletFullLength = ##t
    }
    \context {
        \Staff
        \consists Horizontal_bracket_engraver
    }
    \context {
        \RhythmicStaff
        \consists Horizontal_bracket_engraver
    }
}

\paper {
    evenFooterMarkup = ##f
    evenHeaderMarkup = ##f
    indent = #0
    left-margin = 1\in
    oddFooterMarkup = ##f
    oddHeaderMarkup = ##f
    print-first-page-number = ##f
    print-page-number = ##f
    ragged-right = ##t
}
