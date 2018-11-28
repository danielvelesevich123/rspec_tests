# frozen_string_literal: true

require 'rspec'
require_relative '../lib/LinkedList'

describe LinkedList do
  describe '#add' do
    let(:list_with_one_element) { described_class.new }

    context 'when add some element' do
      before { list_with_one_element.add(1) }
      it 'return his value = 1' do
        expect(list_with_one_element.tail.value).to eq(1)
      end
    end

    context 'when add another element' do
      before { list_with_one_element.add(2) }
      it 'return his value = 2' do
        expect(list_with_one_element.tail.value).to eq(2)
      end
    end
  end

  describe '#display' do
    let(:list_with_two_elements) { described_class.new }
    let(:list_with_tree_elements) { described_class.new }

    context 'when add 2 elements' do
      before do
        list_with_two_elements.add(1)
        list_with_two_elements.add(2)
      end
      it 'returns values of all elements' do
        expect(list_with_two_elements.display).to eq([1, 2])
      end
    end

    context 'when add third element' do
      before do
        list_with_tree_elements.add(1)
        list_with_tree_elements.add(2)
        list_with_tree_elements.add(3)
      end
      it 'returns values of all elements' do
        expect(list_with_tree_elements.display).to eq([1, 2, 3])
      end
    end
  end

  describe '#reverse' do
    let(:reversed_list_with_two_elements) { described_class.new }
    let(:reversed_list_with_tree_elements) { described_class.new }

    context 'when add 2 elements' do
      before do
        reversed_list_with_two_elements.add(1)
        reversed_list_with_two_elements.add(2)
        reversed_list_with_two_elements.reverse
      end
      it 'returns values of all elements reversed' do
        expect(reversed_list_with_two_elements.display).to eq([2, 1])
      end
    end

    context 'when add third element' do
      before do
        reversed_list_with_tree_elements.add(1)
        reversed_list_with_tree_elements.add(2)
        reversed_list_with_tree_elements.add(3)
        reversed_list_with_tree_elements.reverse
      end
      it 'returns values of all elements' do
        expect(reversed_list_with_tree_elements.display).to eq([3, 2, 1])
      end
    end
  end
end
